# rename all directories from 18xyz to just xyz
ls -d 18*/ | sed 's/18\(.*\)/\1/g' | xargs -I % mv 18% %
# list all directories starting with 18
# trim the 18 from the name
# mv every directory to xyz from 18xyz
