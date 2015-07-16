#!/usr/bin/env bash

DIR=$(dirname `which $0`)

GIO=$(cat $DIR/.gitignoreio_list | grep -v "^#" | grep -v "^$" | tr "\\n" "," | sed 's/,$//')

echo "Generating .gitignore file using gitignore.io for: $GIO"

echo "Global .gitignore file" > $DIR/.gitignore
echo "======================" >> $DIR/.gitignore

cat .gitignore_custom >> $DIR/.gitignore
cat .gitignore_extra >> $DIR/.gitignore

curl https://www.gitignore.io/api/$GIO >> $DIR/.gitignore
