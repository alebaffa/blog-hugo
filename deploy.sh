#!/bin/bash
echo -e "\033[0;32mDeploying updates on alebaffa/hugo-blog ...\033[0m"
git add -A
msg="updating blog `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git push origin master

echo -e "\033[0;32mDeploying updated /public on to alebaffa.github.io ...\033[0m"

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd public
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..