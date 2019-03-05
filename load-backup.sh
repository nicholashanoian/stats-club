if [ -d $1 ]
then
	cp $1/db.sqlite3 .
	cp -r $1/media .
fi



