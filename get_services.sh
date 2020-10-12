dev_flag=0;
dev=
while getopts d: option
do
	case "$option" in
		d) dev="$OPTARG"
		dev_flag=1;;
	esac
done

if [ "$dev_flag" -eq 1 ]
then
xs services | grep "\shana\s" | awk '{print $1}' | grep "^"$dev"-................-.*-.*"
exit
fi

xs services | grep "\shana\s" | awk '{print $1}' | grep "^.*-................-.*-.*"

exit
