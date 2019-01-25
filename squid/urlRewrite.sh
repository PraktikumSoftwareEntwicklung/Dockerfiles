#!/bin/sh

CONFIG_FILE=$1

if [ ! -f $CONFIG_FILE ]; then
        echo "Invalid config file"
        exit 1
fi


while read -r line; do

        set $line
        URL=$1

        NEWURL=$URL
        while read -r pattern; do
                NEWURL=$(echo $NEWURL | sed -e "s|$pattern|g")
        done < "$CONFIG_FILE"

        if [ "$URL" = "$NEWURL" ]; then
                RESULT=ERR
        else
                RESULT="OK status=301 rewrite-url=$NEWURL"
        fi

        echo $RESULT

done
