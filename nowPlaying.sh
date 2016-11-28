#!/usr/bin/env bash

name=$(cmus-remote -Q | awk '/tag title / { $1=""; $2=""; sub(" ", ""); print $0 }')
artist=$(cmus-remote -Q | awk '/tag artist / { $1=""; $2=""; sub(" ",""); print $0 }')
album=$(cmus-remote -Q | awk '/tag album / { $1=""; $2=""; sub(" ",""); print $0 }')
year=$(cmus-remote -Q | awk '/tag date / { $1=""; $2=""; sub(" ",""); print $0 }')

notify-send "$name\n $artist\n $album -$year"
