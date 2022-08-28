#!/usr/bin/bash

add_a_user()
{
	USER=$1
	PASSWD=$2
	shift; shift;
	COMMENTS=$@
	echo "Adding user $USER... "
	echo useradd -c "$COMMENTS" $USER 
	echo passwd $USER $PASSWD
	echo "Added user $USER ($COMMENTS) with password $PASSWD"
}

# Main body
echo "Start of script"
add_a_user maverick letmein Pete 'Maverick' Mitchell
add_a_user phoenix badpassword Phoenix and Bob
add_a_user rooster worsepassword Bradley Rooster Bradshaw
echo "End of script"
