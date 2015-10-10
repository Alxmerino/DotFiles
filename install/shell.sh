echo "installing oh-my-zsh"
# @TODO install oh-my-zsh cancels the rest of the script
$dry sh -c "$($dry curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "setting symlinks"
sh symlinks.sh
echo "adding zsh syntax highlighting"
($dry cd ~/.oh-my-zsh/custom/plugins && $dry git clone git://github.com/zsh-users/zsh-syntax-highlighting.git)
echo "installing rvm"
$dry \curl -sSL https://get.rvm.io | bash -s stable