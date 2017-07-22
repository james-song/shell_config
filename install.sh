#!/bin/sh
mv "$HOME/.zshrc" "`pwd`/zshrc_backup"
ln -s "`pwd`/zshrc" "$HOME/.zshrc"
