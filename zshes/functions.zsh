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

# Open directory in sublime
stt() {
	if [[ "$1" == "" ]]; then
		sublime ./
	else
		sublime $1
	fi
}