# Expression Engine
syncdb ()
{ 
	# alias sync:db='remotee-sync --env=read -d'
	echo "Which env do you want to sync? staging, production, banana?"
	read env
	echo "Syncing $env DB"
	remotee-sync --env=$env -d -v
}
