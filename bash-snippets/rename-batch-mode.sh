# rename all files named "abc (1).xyz" to "abc.xyz"
ls *\ \(1\).* | sed 's/\(.*\) (1)\.\(.*\)/\1 \2/' | xargs -n2 sh -c 'mv $0\ \(1\).$1 $0.$1
