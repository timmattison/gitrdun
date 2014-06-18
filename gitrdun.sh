#!/usr/bin/env bash

TEMPFILE=`mktemp XXXXX`

echo "Finding all of your commits from yesterday..."

find ~ -name ".git" -type d -exec sh -c "cd '{}' ; echo '{}'; git log --all --since='yesterday'" \; > $TEMPFILE

clear
cat $TEMPFILE
rm $TEMPFILE
