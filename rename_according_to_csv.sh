INPUT= "/path/to/csv/file"
OLDIFS=$IFS
IFS=,
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read name phone path
do
	echo "$name", "$phone"
	mv ~/$phone/$name_${path:6:${#path}} ~/$phone/$name-${path:6:${#path}}
done < $INPUT
IFS=$OLDIFS
