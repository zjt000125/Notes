#!/bin/bash
commit_description=$1

git add .
git commit -m ${commit_description}
git push
