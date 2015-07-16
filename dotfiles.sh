#!/usr/bin/env bash

set -x

DIR=$(cd "$(dirname "$1")" && pwd)


function symlink () {
  rm $1
  ln -s $2 $1
}


# Git configs
git/generate_gitignore.sh
symlink ~/.gitconfig     $DIR/git/.gitconfig
symlink ~/.gitattributes $DIR/git/.gitattributes
symlink ~/.gitignore     $DIR/git/.gitignore
