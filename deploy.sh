#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

echo -e "move to /public"
cd public
# Add changes to git.
echo -e "adding files..."
git add -A

# Commit changes.
msg="rebuild site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"

remote=$(git remote -v)
echo -e "pushing /public into $remote"

git push origin master

# Come Back
cd ..
git add -A
git commit -m "$msg"
remote=$(git remote -v)
echo -e "pushing root into ${remote}"