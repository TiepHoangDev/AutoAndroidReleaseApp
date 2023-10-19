#!/bin/bash
FILE_VERSION=build/Auto/version.txt
XML_FILE=info/version_app.xml
TEXT=$(cat $FILE_VERSION)
TEXT=$(echo $TEXT | sed -r 's/\s*//g')
NEW_VERSION="<Version>$TEXT</Version>"
sed -r -i "s|<Version>.*<\/Version>|$NEW_VERSION|" $XML_FILE