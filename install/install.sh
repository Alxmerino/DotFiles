if [[ "$1" == "--dry-run" ]]; then
    dry="echo"
else
    dry=""
fi

# export dry for the other scripts
export dry=$dry


echo "downloading cli and vim items"
sh shell.sh
echo "downloading homebrew and cask apps"
sh apps.sh
echo "installing node"
sh nodejs.sh
echo "setting up npm global packages"
sh npms.sh
echo "install python"
brew install python
echo "Install git-crypt"
brew install git-crypt
echo "install mackup"
brew install mackup
echo "restoring mackup settings"
$dry mackup restore
echo "installing global composer packages"
sh composer.sh
echo "syncing sublime packages"
sh sublime.sh
echo "You're good to go"
