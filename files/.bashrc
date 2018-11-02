# ~/.bashrc: executed by bash(1) for non-login shells.
# See also: bash(1), bash-builtins(1) and readline(3).
#
# SUMMARY
# - load system bashrc (redhat)
# - add ~/bin and ~/.local/bin to PATH
# - set bash history
# - set PS1
# - set dircolors for `ls` outputs
# - load bash aliases
# - load bash completion
# - load bash local overrides
# - set PROMPT_COMMAND
# - launch screen

################################################################################
# If not running interactively, don't do anything
[[ "$-" == *i* ]] || return


################################################################################
# Each distro may provide its own set of shell-init files, as /etc/profile and
# /etc/skel/.profile among others. On Redhat, system-wide bashrc is loaded from
# user(s .bashrc.
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


################################################################################
# Add user's bin directories to its PATH, only if they currently exist and if
# they don't be in PATH yet.
for BINDIR in ${HOME}/bin ${HOME}/.local/bin; do
    [ -d ${BINDIR} ] &&
    case "${PATH}" in
        ${BINDIR}:*|*:${BINDIR}:*|*:${BINDIR}) ;;
        *) PATH=${BINDIR}:${PATH} ;;
    esac
done
unset BINDIR

# Export LC_* variables. This may be required on some distributions to avoid
# tmux defaulting them all to "C" or "POSIX".
eval export $(locale)


################################################################################
# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# Or even extend the list of patterns to not track in history.
HISTIGNORE=$'[ \t]:&:cd:ls:exit'

# No size limit. This may be overridden by readline variable 'history-size'
# in inputrc. As documented, '-1' means 'no limit' on Debian, but this is
# not the case on Redhat. Luckily, set history-size inputrc variable to "-1"
# is working for both.
#HISTSIZE=-1
#HISTFILESIZE=-1

# Write history in the proper file, i.e. the one belonging to the user, in ITS
# actual HOME: the one of the sudo target, not the one of the sudo caller. This
# could be done with the AWK external command:
#HISTFILE="$(awk -F: -v user=${USER} '$1 == user {print $6}' /etc/passwd)/.bash_history"
# But we don't want to depend on it to initialize the shell. Not because of awk
# but because of external command. So this is bash pure blend:
while read line; do
    list=( $(IFS=:; echo ${line}) )
    [[ "${list[0]}" == "${USER}" ]] && HISTFILE="${list[5]}/.bash_history" && break
done </etc/passwd
unset line list

# Append each history queue to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, a command that is a directory is assumed to be a directory to change
# to, and a 'cd' to this directory is performed verbosely.
shopt -s autocd

# If set, small typos in directory names are automatically corrected before
# cd command is performed and line is wrtten in history.
shopt -s cdspell

# If set, bash tries to append a multiline command as a single line in its
# history.
shopt -s cmdhist

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar


################################################################################
# BASH_CURRENT_PARENT_PROCESS
# BASH_INITIAL_PARENT_PROCESS
# We will use these variables to build PS1 and PROMPT_COMMAND. Most common shell
# parent processes may be:
# - xterm, xfce4-terminal, roxterm, ...
# - bash, zsh, ksh, sh, screen, tmux, ...
# - sudo, su, login, sshd
# - vim (:!bash), mc (^O)
BASH_CURRENT_PARENT_PROCESS="$(ps -o comm= ${PPID})"
BASH_INITIAL_PARENT_PROCESS=${BASH_INITIAL_PARENT_PROCESS:-${BASH_CURRENT_PARENT_PROCESS}}
export BASH_INITIAL_PARENT_PROCESS

# TITLE_PREFIX will be the main part of PROMPT_COMMAND - the title of screen
# and tmux tabs or windows. It is built dynamically to get a generic value...
TITLE_PREFIX="${SUDO_USER:+${USER%${SUDO_USER}}}${SSH_CONNECTION:+@${HOSTNAME%%.*}}"

# ... and is overridden with some unconditionals
case "${BASH_CURRENT_PARENT_PROCESS}" in
    login)
        TITLE_PREFIX= ;;
    su)
        TITLE_PREFIX="${USER}@${HOSTNAME%%.*}" ;;
esac


################################################################################
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# We want a colored prompt when possible, to easily see:
# - where each output of command begins and ends
# - who I am (me, root or another sudo target)
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    if [ $(id -u) -eq 0 ]; then
        # Clearly, I'm root now, with a red skin
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    elif [ "${SUDO_USER}" ]; then
        # I'm not root, but I'm not me too, in yellow
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    elif [ "${SSH_CONNECTION}" ]; then
        # That's me ! but on a remote system, in dark green
        PS1='${debian_chroot:+($debian_chroot)}\[\033[00;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
        # Also override the TMOUT system settings by the way
        unset TMOUT
    else
        # That's me ! in green, I can break only my own local stuff
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    fi
    # Advertise the user that its current shell is nested or is an 'escape to a
    # shell' from another application (mc, vim, ...), by prefixing the prompt.
    case "${BASH_CURRENT_PARENT_PROCESS}" in
        su|mc|vim)
            PS1='\[\033[01;37m\]<${BASH_CURRENT_PARENT_PROCESS^^}>\[\033[00m\] '${PS1} ;;
    esac
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi


################################################################################
# enable color support of ls and grep. The dircolors input file is itself the
# output of `dircolors -p`.
if [ -x /usr/bin/dircolors ]; then
    if [ -r ~/.dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)"
    elif [ -r /etc/dircolors ]; then
        eval "$(dircolors -b /etc/dircolors)"
    else
        eval "$(dircolors -b)"
    fi
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


################################################################################
# Alias definitions. You may want to put all your additions into a separate file
# like ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


################################################################################
# enable programmable completion features. Depends on bash-completion package.
# Automatically loads ~/.bash_completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi


################################################################################
# Time to load local code. Because this file may be deployed again and local
# changes will then be lost, put your overrides and persistent deltas there:
if [ -f ~/.bashrc.local ]; then
    . ~/.bashrc.local
fi


################################################################################
# Dynamically set window titles with the current running program name and/or
# its context (sudo target, local or remote shell, parent process)
# trap ... DEBUG  -> is to change the window title right **BEFORE** a command
#                    has to be executed
# PROMPT_COMMAND  -> is to change the window title right **AFTER** a command
#                    has been executed
case "${TERM}" in
    screen*|tmux*)
        trap 'printf "\033k%s\033\\" "${TITLE_PREFIX:+(${TITLE_PREFIX}):}${BASH_COMMAND/ *}"' DEBUG
        PROMPT_COMMAND='printf "\033k%s\033\\" "${TITLE_PREFIX:+(}${TITLE_PREFIX:-bash}${TITLE_PREFIX:+)}"'
esac


################################################################################
# When coming from another host, automatically start screen if not already in
# screen, otherwise just clear the console
[[ "${BASH_CURRENT_PARENT_PROCESS}" == sshd ]] &&
if [[ "${TERM}" != screen* ]]
then screen -DR; exit
else clear
fi

:

# vim: et sts=4 sw=4 ts=4 ft=sh
