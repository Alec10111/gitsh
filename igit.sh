#!/bin/sh

mkdir -p $1
echo "created directory $1"

cd $1
echo "navigated to directory $1"

git init -b master

touch README.md
echo 'Created readme file'

git add . && git commit -m "initial commit"

gh repo create --source=. --public --push
