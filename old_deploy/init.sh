#! /bin/bash
echo -e "clone into /public"
git clone https://github.com/alebaffa/alebaffa.github.io.git public
echo -e "move into /public"
cd public
echo -e "set url to: git@github.com:alebaffa/alebaffa.github.io.git"
git remote set-url origin git@github.com:alebaffa/alebaffa.github.io.git