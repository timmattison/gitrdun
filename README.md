gitrdun
=======

Use your git commits to keep track of what you did during the week

The current version is so simple you can just use this alias:

```
alias gitrdun="clear ; PAGER=\"cat\" find ~ -name \".git\" -type d -exec sh -c \"cd '{}' ; echo '{}'; git log --all --since='yesterday'\" \; | less"
```
