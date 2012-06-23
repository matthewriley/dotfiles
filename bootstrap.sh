#!/bin/bash
cd "$(dirname "$0")"
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude ".project" -av . ~
}
doIt
unset doIt
source ~/.bash_profile