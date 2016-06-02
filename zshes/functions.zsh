# Expression Engine
syncdb ()
{ 
	# alias sync:db='remotee-sync --env=read -d'
	echo "Which env do you want to sync? staging, production, banana?"
	read env
	echo "Syncing $env DB"
	remotee-sync --env=$env -d -v
}

# Git
reset-hard()
{
	git reset --hard origin/$1
	echo "Reset branch, don't let it happen again!"
}

# Finds a specific ssh config
# e.g. checkConf amayamedia
checkConf() {
    sed -n "/"$1"/,/^$/p" ~/.ssh/config;
}

# checks weather with curl
# args city, zip, moon
weather() {
	curl wttr.in/$1
}

# Open active directory in sublime
stt() {
	sublime ./$1
}