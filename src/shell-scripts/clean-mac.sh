#!/bin/bash

# Clean Brew package manager
brew cleanup -s;

# Remove most Cache
rm -Rf $HOME/Library/Caches/*;
