#!/bin/bash

#variables
repo="https://github.com/jonathino/CiberDevops.git"
#Colores
LRED='\033[1;31m'
LGREEN='\033[1;32m'
LBLUE='\033[1;34m'
LYELLOW='\033[1;33m'
NC='\033[0m'
NameBranch="generarlipsum"

##
echo ${LGREEN} "Cloning the repository to your local"
git clone ${repo}

echo ${LGREEN} "Creating a new branch in your local repository, called ${NameBranch}"
echo   
git checkout -b ${NameBranch}

