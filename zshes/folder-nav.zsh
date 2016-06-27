alias sites='cd ~/Sites'
alias conf='cd ~/DotFiles'
alias home='$HOME'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Open iOS Simulator if is installed
# Works with xCode 7.*
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# mkdir and cd into that dir
mkd() {
    mkdir -p $1
    cd $1
}

# Loads local bash
load_local_bash(){
    Files='./.bashrc.local';

    if [ -f $Files ]; then
        source $Files;
        cat $Files;
    fi
}

# Extend buildin cd
cd () {
    builtin cd "$@";
    load_local_bash;
}
