#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias n='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mus='mpv --no-audio-display'
alias x='startx'
alias mpd='mkdir -p /run/user/1000/mpd/ && mpd'

# zshrc or bashrc
lf () {
    LF_TEMPDIR="$(mktemp -d -t lf-tempdir-XXXXXX)"
    LF_TEMPDIR="$LF_TEMPDIR" lf-run -last-dir-path="$LF_TEMPDIR/    lastdir" "$@"
    if [ "$(cat "$LF_TEMPDIR/cdtolastdir" 2>/dev/null)" = "1" ];     then
        cd "$(cat "$LF_TEMPDIR/lastdir")"
    fi
    rm -r "$LF_TEMPDIR"
    unset LF_TEMPDIR
}

PS1="
\[\e[30;44m\] \u \[\e[0m\]\[\e[30;47m\] \$ \[\e[0m\]\[\e[30;47m\    ]\w \[\e[0m\] > "

