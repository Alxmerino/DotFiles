# Expression Engine
syncdb ()
{ 
	# alias sync:db='remotee-sync --env=read -d'
	echo "This command requires remotee-sync to be globally installed."
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

# Get docker container IP 
# http://networkstatic.net/10-examples-of-how-to-get-docker-container-ip-address/
dockip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

# Find my local public IP Address
myip() {
	myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
	echo "My WAN/Public IP address: ${myip}"
}

# Open directory in sublime
stt() {
	if [[ "$1" == "" ]]; then
		sublime ./
	else
		sublime $1
	fi
}
