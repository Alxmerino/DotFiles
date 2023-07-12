/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
$dry brew install caskroom/cask/brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# install all the apps
apps=$(<data/apps.txt)
echo "Installing all the apps"
for app in $apps
do
    $dry brew install $app --cask
done
