#!/bin/bash

echo -e "\033[0;32mBulding site...\033[0m"

hugo

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"


cd public
git init
git config user.name "Travis-CI"
git config user.email "travis@travis-ci.org"
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git remote add origin "https://${GH_TOKEN}@${GH_REF}"

git push --force --quiet master

cd ..
