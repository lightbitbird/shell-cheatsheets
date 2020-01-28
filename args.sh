#!/bin/sh

if [ $# -lt 2 ]; then
  echo "usage: args.sh -r one -z two -e three"
  exit 1
fi

function usage() {
    cat <<EOF
-r option1
-z option2
-e option3
EOF
}

echo "\$0: $0"
echo "\$2: $2"
echo "\$4: $4"
echo "\$6: $6"
# counts of args
echo "\$#: $#"
echo "\"\$*\": \"$*\""
echo "\"\$@\": \"$@\""
echo "\$\${processID}: $$"
echo "\$!{background processID}: $!"
echo $?

