#!/bin/bash

usage()
{
    echo "Usage: `basename $0` prjname"
    exit 1
}

if [ $# = 0 ]
then
    usage
fi

prjdir=./.$1
if [ ! -d $prjdir ]
then
    echo "create prjdir:$prjdir"
    mkdir -p $prjdir
fi

#cscope.files
echo "cscope.files..."
find . \( -path .$1 -o -path ./project \) -prune -o \( -name "*.[ch]" -o -name "*.cpp" \) -print  > $prjdir/cscope.files
#find ./ -name "*.h" -o -name "*.c" -o -name "*.cc" > $prjdir/cscope.files

#filetags for lookupfile
echo "lookupfile name tags..."
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > $prjdir/filenametags

find . \( -path .$1 -o -path ./project \) -prune -o \( -name "*.[ch]" -o -name "*.cpp" \) -type f | while read LINE;do echo -e `basename $LINE` "\t" $LINE "\t" 1;done| sort -f >> $prjdir/filenametags 

exit 0
