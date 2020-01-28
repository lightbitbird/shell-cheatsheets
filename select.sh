#!/bin/sh

PS3="Select with a number: "
select fruit in apple orange banana grape exit
do
	case $fruit in
		apple|orange|banana|grape)
			echo "Selected $fruit!"
			;;
		exit)
			break
			;;
		*)
			echo "Select from 1 to 4"
			;;
	esac
done

