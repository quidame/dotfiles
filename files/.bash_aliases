# ~/.bash_aliases
# Sourced by ~/.bashrc

# Common listing options
alias ls='ls --color=auto'
alias l='ls -A'
alias la='ls -Alh'
alias ll='ls -l'
alias lls='ls -lh'
alias ltr='ls -ltr'

# Colorize all grep commands
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# 2 cd shortcuts
alias -- ..='cd ..'
alias -- -='cd ${OLDPWD}'

# Convenient sizes
alias df='df -hTP'
alias du='du -hs'
alias free='free -mt'

# Other convenient views
alias netstatic='netstat -plnt'
alias nocomment='grep -Ehv "^\s*(${c:-#}|$)"'
alias fstab='grep -Ev "^\s*(#|$)" /etc/fstab | column -t'

# Enable mouse support in MC
alias mc='mc -x'
alias mcedit='mcedit -x'
alias mcview='mcview -x'

# Alias some useful commands if they're out of the user's PATH
for x in \
    blkid \
    fuser \
    pidof \
    sysctl
do
    type -P ${x} &>/dev/null ||
    for d in {/usr{/local,},}/sbin; do
        [ -x "${d}/${x}" ] && alias ${x}="${d}/${x}" && continue 2
    done
done
unset d x

# vim: et sts=4 sw=4 ts=4 ft=sh
