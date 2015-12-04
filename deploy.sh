#!/bin/bash

mydate="$(date -u --rfc-2822)"
buildid="$(echo "$mydate" | tr -d ' ',',','+',':')"
git checkout --orphan "${buildid}"

hugo -b 'http://blog.synapsegarden.net'
rm config.toml README.md .gitignore LICENSE
rm -rf content layouts themes static
mv public/* ./
echo "*.sw[nop]" > .gitignore
echo ".gitmodules" >> .gitignore
echo "blog.synapsegarden.net" > CNAME
rm -rf public
rm deploy.sh

git add . --all

git commit -m "Build ${buildid}"
git checkout gh-pages
git merge --strategy-option theirs "${buildid}" --squash
git branch -D "${buildid}"

