INPUT="/path/to/csv/file"
OLDIFS=$IFS
IFS=,
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read filename
do
	echo "Name : $filename"
	mkdir test/$filename
done < $INPUT
IFS=$OLDIFS
