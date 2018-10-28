# ~/.bash_logout: executed by bash(1) when login shell exits.


if [ "$SHLVL" = 1 ]; then
    # when leaving the console clear the screen to increase privacy
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q

    if [ "$(users | grep -ow "${USER}" | wc -w)" = 1 ]; then
        # when leaving all consoles and terminals, remove temporary files
        rm -rf ${HOME}/tmp ${HOME}/.tmp

        # and drop credentials
        sudo -k
    fi
fi
