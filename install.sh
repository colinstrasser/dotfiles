#!/usr/bin/env bash

set -e

cd `dirname $0`
export DOTFILES=`pwd`

source $DOTFILES/install_functions.sh

update_submodules

link_with_backup .bashrc
link_with_backup .bash_profile
link_with_backup .gitconfig
link_with_backup .gitignore_global
link_with_backup .rvmrc
link_with_backup .tmux.conf

link_with_backup .emacs.d
install_elpa
link_with_backup .emacs
link_with_backup .emacs-custom.el

install_org_mode
install_magit
install_relevance_etc


backup ~/.relevance-etc
ln -s $DOTFILES/submodules/relevance/etc $HOME/.relevance-etc
