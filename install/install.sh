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
echo "Installing node"
sh nodejs.sh
echo "setting up npm global packages"
sh npms.sh
echo "Installing brew packages"
sh brew.sh
echo "Installing global composer packages"
sh composer.sh
echo "syncing sublime packages"
sh sublime.sh
echo "You're good to go"
