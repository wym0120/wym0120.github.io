#!/bin/sh
git pull
hexo clean
hexo g

git add .
git commit -m "update md"
git push

sudo hexo d
