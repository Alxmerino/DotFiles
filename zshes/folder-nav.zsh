alias sites='cd ~/Sites'
alias conf='cd ~/DotFiles'
alias home='$HOME'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias stt='sublime .'

# mkdir and cd into that dir
mkd() {
    mkdir -p $1
    cd $1
}
