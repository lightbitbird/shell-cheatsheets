FOO=abc123efg

if [[ ${FOO} =~ ^[a-z]+([0-9]+).*$ ]]; then
	echo ${BASH_REMATCH[1]}
fi

string="--ABC--"
regexp="-(A)(B)(C)-"

if [[ $string =~ $regexp ]]; then
	echo ${BASH_REMATCH[0]}
	echo ${BASH_REMATCH[1]}
	echo ${BASH_REMATCH[2]}
	echo ${BASH_REMATCH[3]}
fi

var="/my/path/dir/test.dat"
#${変数名#パターン} → 前方一致でのマッチ部分削除(最短マッチ)
echo ${var#*/}
#${変数名##パターン} → 前方一致でのマッチ部分削除(最長マッチ)
echo ${var##*/}
#${変数名%パターン} → 後方一致でのマッチ部分削除(最短マッチ)
var="/my/path/dir/test.20130930.dat"
echo ${var%.*}
#${変数名%%パターン} → 後方一致でのマッチ部分削除(最長マッチ)
echo ${var%%.*}
#${変数名/置換前文字列/置換後文字列} → 文字列置換(最初にマッチしたもののみ)
var="abcdef abcdef xyz"
echo ${var/abc/XXX}
#${変数名//置換前文字列/置換後文字列} → 文字列置換(マッチしたものすべて)
echo ${var//abc/XXX}


