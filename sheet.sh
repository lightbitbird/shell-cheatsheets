export FILE_NAME=file.txt

#date
`date +"%Y/%m/%d %H:%M:%S"` >> ${FILE_NAME}

#mkdir date
mkdir `date +%Y%m%d+%H%M`

# operation of files in current directory
for FILE in *
do
	echo ${FILE}
done

for FILE in *.png
do 
	echo 
done


# change extentions of all files from .txt into .doc in current directory
for FILE in *.txt
do 
	mv $FILE ${FILE%.txt}.doc
done


# read a file
while read line
do
	echo $line
done < .list.txt


# here document
cat << EOF > test
line1
line2
line3
EOF


# here document from a file
DATA=`cat ./list.dat`
while read line
do
	echo $line
done << FILE
$DATA
FILE


# here document from a file 2
sftp -oPort=2222 -oIdentityFile=hoge hoge@hogehoge.hogehoge.hoge << EOF
cd /tmp
put hoge1
cd /home
put hoge2
put hoge3
quit
EOF

# pipe 
cat ./list.dat | while read line
do 
	echo $line
done


