#!/bin/sh

# Based on http://asciicasts.com/episodes/135-making-a-gem
# You need to install echoe "sudo gem install echoe"

echo ">> Testing"
rake manifest

echo ">> Installing"
rake install

echo ">> To publish issue: 'rake release'"
echo ">> To push to rubygems.org issue: gem push pkg/magicbroker-<version>.gem"

echo ">> You, monsieur, are done."
