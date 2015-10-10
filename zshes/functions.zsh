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
	echo "Reset to which branch?"
	read branch
	git reset --hard origin/$branch
	echo "Reset branch, don't let it happen again!"
}