mkdir -p bazar_clean/divers bazar_clean/images bazar_clean/videos

FILES=`find $1 -type f`

for FILE in $FILES
do
	if file "$FILE" | grep -qE 'image|bitmap'
	then
		YEAR=`stat -t %Y $FILE | cut -d ' ' -f 9 | sed s/\"//g`
		if [ ! -d bazar_clean/images/$YEAR ]
		then
			mkdir bazar_clean/images/$YEAR
		fi
		
		MONTH=`stat -t %m $FILE | cut -d ' ' -f 9 | sed s/\"//g`
		if [ ! -d bazar_clean/images/$YEAR/$MONTH ]
		then
			mkdir bazar_clean/images/$YEAR/$MONTH
		fi
		
		FILENAME=`echo "$FILE" | sed "s/.*\///"`
		cp $FILE bazar_clean/images/$YEAR/$MONTH/$FILENAME
	elif file "$FILE" | grep -qE 'MPEG'
	then
		if [ ! -d bazar_clean/videos ]
		then
			mkdir bazar_clean/videos
		fi
		
		FILENAME=`echo "$FILE" | sed "s/.*\///"`
		cp $FILE bazar_clean/videos/$FILENAME
	else
		if [ ! -d bazar_clean/divers ]
		then
			mkdir bazar_clean/divers
		fi
		
		FILENAME=`echo "$FILE" | sed "s/.*\///"`
		cp $FILE bazar_clean/divers/$FILENAME
	fi
done
