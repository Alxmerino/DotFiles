alias sites='cd ~/Websites'
alias config='cd ~/DotFiles'
alias home='$HOME'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# mkdir and cd into that dir
mkd() {
    mkdir -p $1
    cd $1
}
