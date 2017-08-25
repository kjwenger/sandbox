#!/usr/bin/env bash

#set -x

while read LINE; do
  git clone ${LINE} --recursive --progress
  DIR="$(echo ${LINE} | sed -e 's/git@github\.com:kjwenger\/\(.*\)\.git/\1/')"
  cd ${DIR}
  git fetch --all --recurse-submodules=yes --progress
  # git checkout develop
  git pull --all --progress
  cd -
done <git_kjwenger_repos_ssh_urls.txt
