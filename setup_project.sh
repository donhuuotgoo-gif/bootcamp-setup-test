#!/bin/bash
PROJECT_NAME=$1
if [ -z "$PROJECT_NAME" ]; then
 echo "$PROJECT_NAME"
 exit 1
fi

mkdir -p $PROJECT_NAME
mkdir -p $PROJECT_NAME/src
mkdir -p $PROJECT_NAME/docs
touch $PROJECT_NAME/src/app.py
touch $PROJECT_NAME/docs/README.md
touch $PROJECT_NAME/1.gitignore
echo -e ".pyc \n pycache/" > $PROJECT_NAME/1.gitignore

echo "Git settings loading..."
cd $PROJECT_NAME
git init
git add .
git commit -m "Initial project setup and folfer stricture"

read -p "URL:" GIT_URL
git remote add origin $GIT_URL
git branch -M main
git push -u origin main

echo "Project Complete, Github pushed!"
echo "Your project '$PROJECT_NAME'."

 

