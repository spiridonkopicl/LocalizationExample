#!/bin/sh
echo "pre-commit started"
for i in `find ./LocalizationExample/NewRepo/ -name 'Localizable.strings'` ; do echo $i ; done

plutil -lint LocalizableA.strings

echo "pre-commit finished"
