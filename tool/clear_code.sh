#!/bin/sh
FILES=$( find .. -type f -name '*~' )
for FILE in $FILES; do
    echo rm $FILE
    rm $FILE
done
