#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔

function __ls_recent_commands() {           ## SHELL_UTIL.FUNCTION ##
    export entries="$2"
    if [ -z $2 ];then
	    export entries="1";
	fi
    cat ~/.bash_history | egrep -iE "$1" | sed -e 's|classic .*||' | sed -e 's|__ls_recent_commands.*||' | tail -n "$entries" 
}                                           ## SHELL_UTIL.FUNCTION ##