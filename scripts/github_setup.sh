#!/bin/bash

# replace the following variables with your github repo info
github_user="itrauco"
repo_name="gcp-org-setup"
private="false" # set to "true" for private repo

# create new repo on github
curl -u $github_user https://api.github.com/user/repos -d "{\"name\":\"$repo_name\",\"private\":$private}"

# add remote origin and push initial commit
git remote add origin https://github.com/$github_user/$repo_name.git
git add .
git commit -m "initial commit"
git push -u origin master
