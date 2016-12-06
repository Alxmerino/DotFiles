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


alias bashrc="[ $(find . -maxdepth 2 -name .bashrc-local) ] && source $(find . -maxdepth 2 -name .bashrc-local) && echo 'local bashrc loaded'"
alias show:bashrc="[ $(find . -maxdepth 2 -name .bashrc-local) ] && cat $(find . -maxdepth 2 -name .bashrc-local)"

# Loads local bash
load_local_bash(){
    Files=('./.bashrc.local' './.bashrc-local');

    for File in $Files
    do
        if [ -f $File ]; then
            source $File;
            echo 'Local bashrc loaded';
            cat $File;
        fi
    done

}

# Extend buildin cd
cd () {
    builtin cd "$@";
    load_local_bash;
}
