# remove the package xyz; directive from all java files in a directory
sed -i '/package/d' *.java
