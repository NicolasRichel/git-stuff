#!/bin/bash

repoName=$1
if [ -z "$repoName" ]; then
  read -p "Enter repository name : " repoName
fi
if [ -z "$repoName" ]; then
  echo -e "You must specify a valid repository name !\n"
  exit 1
fi


mkdir $repoName
cd $repoName
git init
git remote add origin git@github.com:NicolasRichel/$repoName.git
git remote -v


touch README.md
echo "# $repoName" > README.md
git add .
git commit -m "Initial commit (init repository)."


read -p "Push initial commit ? (y/N) " ans
if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
  git push -u origin master
fi


echo -e "New git repository successfully initialized.\n"
exit 0

