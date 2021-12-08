#!/bin/sh

# source: https://gist.github.com/guilherme/9604324

# Redirect output to stderr.
exec 1>&2

consoleregexp='console.log('
# git diff main..special-branch | grep console.log\( | wc -l
# CHECK
if test $(git diff main..special-branch | grep $consoleregexp | wc -l) != 0
then 
  echo "git diff main..special-branch | grep $consoleregexp | wc -l"
  echo "FAILURE old"
  exit 69
fi