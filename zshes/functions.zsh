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

# Retrieve and copy my public SSH key
mykey() {
	if [[ "$1" == "" ]]; then
		key="id_rsa.pub"
	else
		key=$1
	fi

	cat ~/.ssh/$key | pbcopy
	echo "Your $key is now in you clipboard"
}
