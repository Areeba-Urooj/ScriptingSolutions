!/bin/bash
#$REVISION:001$
#$ Mon Jan 27 12:33:00 PST 2025$


#Provide path of directory

BASE=/home/kaizen/Scripts
DAYS=10
DEPTH=1
RUN=0

#Checking if directory is present

if [[ ! -d $BASE ]]
then 
echo "Directory does not exist $BASE"
exit 1
fi

#Create archive folder

if [[ ! -d $BASE/archive ]]
then
mkdir $BASE/archive
fi

#Find all the files size more then 20MB, Compress each file and Move the compre>
for i in `find $BASE -maxdepth $DEPTH -type f -size +10M`
do
if [[ $RUN -eq 0 ]]
then 
gzip -f $i || exit 1
else
mv $i.gz $BASE/archive || exit 1
fi
done
