#!/bin/bash

mydate="$(date -u --rfc-2822)"
buildid="$(echo "$mydate" | tr -d ' ',',','+',':')"
git checkout --orphan "${buildid}"

hugo
rm config.toml README.md .gitignore LICENSE
rm -rf content layouts themes static .gitmodules
mv public/* ./
rm -rf public
echo "*.sw[nop]" > .gitignore
echo "blog.synapsegarden.net" > CNAME
rm deploy.sh

git add . --all

git commit -m "Build ${buildid}"
git checkout gh-pages
rm -rf *
git checkout "${buildid}" -- . # Checkout everything
git add . --all
git branch -D "${buildid}"
