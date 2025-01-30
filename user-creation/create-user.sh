#!/bin/bash
#$REVISION:002$
#$ Mon Feb 27 6:22:00 PST $


#super previlage execution check

if [[ ${UID} -ne 0 ]]
then
echo "Please run with root or sudo command"
exit 1
fi

#guide incase of wrong input

if [[ ${#} -lt 1 ]]
then
echo "Wrong input___  Do this instead___  ${0}  USER_NAME COMMENT_"
echo "Create a username and a comment for that user."
fi

#1st parameter usernme rest comment

userName="${1}"
 
shift
comment="${@}"

#password generation
password=$(date +%s%N)

#create user with password
useradd -c "${comment}" -m $userName

#check if useradd cmd succeeded

if [[ $? -ne 0 ]]
then
echo "Account setup failed"
exit 1
fi

#set password
echo "$userName:$password" | chpasswd

#check passwd succeeded

if [[ $? -ne 0 ]]
then
echo "Password could not be set"
exit 1
fi

#force passwd change on first login
passwd -e $userName

#display username, passwd, host where user is created

echo "__________________________________"
echo
echo "Username: $userName "
echo "Password: $password "
echo $(hostname)

