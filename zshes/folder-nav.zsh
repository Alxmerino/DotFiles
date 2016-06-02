alias sites='cd ~/Sites'
alias conf='cd ~/DotFiles'
alias home='$HOME'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

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