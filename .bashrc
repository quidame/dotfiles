# ~/.bashrc: executed by bash(1) for non-login shells.
# See also: bash(1), bash-builtins(1) and readline(3).

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Append each history queue to the history file, don't overwrite it
shopt -s histappend

# No size limit. This may be overridden by readline variable 'history-size'
# in inputrc:
HISTSIZE=-1
HISTFILESIZE=-1

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, a command that is a directory is assumed to be a directory to change
# to, and a 'cd' to this directory is performed verbosely.
shopt -s autocd

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# We want a colored prompt when possible, to easily see:
# - where each output of command begins and ends
# - who I am (me, root or another sudo target)
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    if [ $(id -u) -eq 0 ]; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    elif [ "${SUDO_UID}" ] && [ ${SUDO_UID} -ne $(id -u) ]; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    else
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    fi
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi


# If this is an xterm set the title to user@host:dir; if this is a screen (or
# tmux), then do more complicated stuff...
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
    screen*)
        # Do not change the window title:
        #PROMPT_COMMAND='printf "\033k\033\\"'
        # Or set it dynmically:
        #PROMPT_COMMAND='printf "\033k%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

        # The first one is to change the window title right BEFORE a command is
        # executed, although the second one is to change the window title AFTER
        # a command has been executed.
        trap 'printf "\033k%s\033\\" "${BASH_COMMAND/ *}"' DEBUG
        PROMPT_COMMAND='printf "\033k%s\033\\" "bash"'
        ;;
    tmux*)
        # Just put this in your tmux.conf to ensure the same behaviour than
        # above with screen:
        # set -g default-terminal tmux
        # setw -g automatic-rename on
        ;;
    *)
        ;;
esac

# enable color support of ls and grep 
if [ -x /usr/bin/dircolors ]; then
    if [ -r ~/.dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)"
    elif [ -r /etc/dircolors ]; then
        eval "$(dircolors -b /etc/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features. Depends on bash-completion package.
# Automatically loads ~/.bash_completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# vim: et sts=4 sw=4 ts=4 ft=sh
