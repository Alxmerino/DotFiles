# New Computer Setup Install Scripts
Oh, new computer?? You fancy huh?

## Steps
1. Run Tests first! `--dry-run` Then, Install Git
2. Install Oh-my-zsh `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
3. Clone this repo and run install/install.sh
4. install.sh then calls a few different shell scripts which will install all the things

## What is being installed
* SSH config (via Dropbox)
* This repo
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* Adds [zsh syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
* ....

## Other dependencies
* Handle homebrew installations: https://github.com/Homebrew/homebrew-bundle
* Handle syncing app configurations: https://github.com/lra/mackup
* Handle installing apps: https://github.com/caskroom/homebrew-cask

## Tests
* Run tests/main.sh to generate an output of everything that is going to run. 
Tests pass a ```--dry-run``` flag to the scripts which simply outputs and doesn’t run
* In addition there are individual scripts that call the broken out scripts
with the ```--dry-run``` in progress

## References
* Add these settings to iTerm2 https://www.evernote.com/l/Ak3DMZprolxH5Il3UPeCeBIP0omCuIHThcQ

## Known Issues
- We'll see

## Install Manually
- Python
- Docker via ddev
- DiplayLink Manager
- +Logi Optinos (Keyboard + Mouse)
- Monosnap
- Toggl Time Tracker
- Zooom2