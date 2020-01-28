#sed
cat ./file.json | sed 's/^{\"test\":\(.*\)}$/\1/' | sed 's/^\[\(.*\)]$/\1/' | tr ',' '\n'


