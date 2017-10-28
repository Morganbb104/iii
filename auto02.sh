#! /bin/bash
cd /D/hadoop/iii/test-iii

while true
do
fc="$(ls | wc -l)"
if [ $fc -gt 0 ];
then
FILES=/D/hadoop/iii/test-iii*
for f in $FILES
do
/mingw64/bin/git add $f
/mingw64/bin/git commit -m "$(date +%H-%M-%S)"
/mingw64/bin/git remote add origin git@github.com:Morganbb104/iii.git
/mingw64/bin/git push -u origin master
/mingw64/bin/git remote remove origin
done
fi;
rm -rf /D/hadoop/iii/test-iii/pic/*
sleep 3
done