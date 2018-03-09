#!/bin/sh

for i in `find ./LocalizationExample/NewRepo/ -name 'Localizable.strings'` ; do echo $i ; done

plutil -lint Localizable.strings
