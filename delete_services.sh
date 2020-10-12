dev=
help_flag=0
dev_flag=0

while getopts d:h option
do
	case "$option" in
		d) dev="$OPTARG"
		dev_flag=1;;
		h) help_flag=1;;
	esac
done

if [ "$help_flag" -eq 1 ]
then
	echo "This script deletes services of a given developer\noptions:\n-d developer name to delete services of"
	exit
fi

echo "Getting services..."
if [ "$dev_flag" -eq 1 ] 
then
	b=$(dash ./get_services.sh -d "$dev")
else
	b=$(dash ./get_services.sh)
fi
echo "$b"
echo "$b" |
	echo "\nAre you sure you want to delete all of the above services? (y/n)"
	
	if read a
	then
		if [ "$a" = "y" -o "$a" = "Y" ]
		then
			echo "$b" |
				while IFS= read -r line;
				do
						xs ds "$line" -f
				done
			exit
		else
			echo "You chose not to delete the services, goodbye"
			exit
		fi
	fi
