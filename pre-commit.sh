#!/bin/sh
echo "pre-commit started"
for i in `find ./LocalizationExample/NewRepo -name 'Localizable.strings'` ;
do echo $i ;
plutil -lint $i ;
if [ $? -eq 0 ]
then
   echo "It worked"
else
   echo "It failed"
   exit 1
fi
done

echo "pre-commit finished"
