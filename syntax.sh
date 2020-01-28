#!/bin/bash

# variable
echo '#variable'
string="Hello world!"

echo string
echo 'string'
echo "string"
echo
echo $string
echo '$string'
echo "$string"
echo
echo ${string}
echo '${string}'
echo "${string}"
echo

name=Max
age=23

printf '%s is %d years old.\n' $name $age
printf "%s is %d years old. \n" $name $age

x=6
y=10
z=$(( x + y ))

echo "x = $x"
echo "y = $y"
echo "x + y = $x + $y = $z"


# conditions
echo '#conditions'

test 3 -gt 2 && echo "1"
test 3 -lt 2 && echo "2"
test 3 -gt 2 || echo "3"
test 3 -lt 2 || echo "4"
test 3 -gt 2 && echo "5" || echo "6"
test 3 -lt 2 && echo "7" || echo "8"

echo

[ 3 -gt 2 ] && echo "> 2"
[ 1 -lt 4 ] && echo "< 4"
[ 8 -eq 8 ] && echo "eq 8"
[ 2 -ge 1 ] && echo ">= 1"
[ 3 -le 5 ] && echo "<= 5"
[ 6 -gt 5 ] && echo "> 5" && echo " && 5"
[ 5 -gt 4 ] && echo "> 4" || echo " || 5"
[ 8 -ne 7 ] && echo "ne 8"

echo '#if condition'
if test 3 -gt 2
then
	echo "test 3 > 2"
fi

if [ 3 -gt 2 ]
then
	echo "3 > 2"
fi

if test 3 -lt 4
then
	echo "test 3 < 4"
fi

if [ 3 -lt 4 ]
then
	echo "3 < 4"
fi


# case
echo "#case condition"

fruit="apple"
case $fruit in
	apple)
		echo "This is an apple."
		;;
	orange)
		echo "This is an orange."
		;;
	bananagrape)
		echo "This is a banana or grape."
		;;
	*)
		echo "This is something else."	
		;;
esac


# for
echo "#for A in ..."
for fruit in apple orange grape
do
	echo $friuit
done

echo
echo "#for i in [...]"
for i in {1..10}
do
	echo "$i roop"
done

echo
echo "#for (i=0; i<num: i++)"
for ((i=0;i<10;i++))
do 
	echo "$i roop."
done


echo
# for with commands
echo "for with commands"

echo
echo "#for file in \$(ls)"
for file in $(ls)
do 
	echo $file
done

echo
echo "#for file in \`ls\`"
for file in `ls`
do 
	echo $file
done

echo 
echo "#while"

n=1
while [ $n -le 5 ]
do
	echo "$n roop"
	n=$((n+1))
done

echo "while from a file"
DATA=`cat ./here`
while read line
do
	echo $line
done << FILE
$DATA
FILE


#untile
echo
echo "#until"
n=1
until [ $n -gt 5 ]
do
	echo "$n roop"
	n=$((n+1))
done

# replace
echo
echo "replace"

echo "\${var/old/new}: replace first one"
for val in koala-koala-koala koala-koala-bird koala-koala-lion
do
    echo ${val/koala/wallaby}
done

echo
echo "\${var//old/new}: replace all"

for val in koala-koala-koala koala-koala-bird koala-koala-lion
do
    echo ${val//koala/wallaby}
done

