#!/bin/sh
mv "$HOME/.bash_profile" "`pwd`/bash_profile_backup"
ln -s "`pwd`/bash_profile" "$HOME/.bash_profile"

