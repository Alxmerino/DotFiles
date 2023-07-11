# Export composer vendors
export PATH=~/.composer/vendor/bin:$PATH
export PATH=/Applications/MAMP/bin/php/php5.4.4/bin:$PATH #MAMP PHI setting for Composer
export PATH=/usr/local/share/npm/bin:$PATH #Setting to use Grunt
export PATH=~/npm/bin:$PATH #Because installed node w/o homebrew add the npm path from the local usr
export PATH=~/.node/bin:$PATH #add path for npm install modules

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" source /usr/local/opt/nvm/nvm.sh
