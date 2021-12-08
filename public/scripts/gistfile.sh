#!/bin/sh

# source: https://gist.github.com/guilherme/9604324

# Redirect output to stderr.
exec 1>&2

consoleregexp='console.log'
# CHECK
if test $(git diff --cached | grep $consoleregexp | wc -l) != 0
then 
  echo "FAILURE"
  exec git diff --cached | grep -ne $consoleregexp
fi