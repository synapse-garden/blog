#!/bin/bash

mydate="$(date -u +'%a, %d %b %Y  %T %z')"
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

if [ `git branch --list gh-pages` ] ; then
  git checkout gh-pages
else
  git checkout upstream/gh-pages
  git checkout -b gh-pages
  git branch --set-upstream-to=upstream/gh-pages
fi

rm -rf *
git checkout "${buildid}" -- . # Checkout everything
git add . --all
git branch -D "${buildid}"
