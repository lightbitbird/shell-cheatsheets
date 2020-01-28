while read line
do
  echo $line
done < ./list.dat


cat <<EOF > here
line1
line2
line3
EOF


DATA=`cat ./list.dat`
while read line
do
  echo $line
done << FILE
$DATA
FILE

