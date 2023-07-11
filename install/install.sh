if [[ "$1" == "--dry-run" ]]; then
    dry="echo"
else
    dry=""
fi

# export dry for the other scripts
export dry=$dry

echo "Downloading cli and vim items"
sh shell.sh
echo "Downloading homebrew and cask apps"
sh apps.sh
echo "Installing node"
sh nodejs.sh
echo "Install python"
echo "Install python manually as needed"
echo "Install mackup"
echo "Reconfigure mackup settings"
#brew install mackup
#echo "Restoring mackup settings"
#$dry mackup restore
echo "Install composer"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
echo "You're good to go"
