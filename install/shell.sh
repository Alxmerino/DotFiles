echo "Setting symlinks"
sh symlinks.sh
echo "Adding zsh syntax highlighting"
($dry cd ~/.oh-my-zsh/custom/plugins && $dry git clone git://github.com/zsh-users/zsh-syntax-highlighting.git)