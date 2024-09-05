#!/bin/dash

loggedInUser=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ && ! /loginwindow/ { print $3 }' )
echo "$loggedInUser"

# Load launch agents for all currently logged in users.
for uid in $(ps -axo uid,args | grep "/[F]inder.app/" | awk '{print $1}'); do
	 echo "$uid"
done

exit 0
