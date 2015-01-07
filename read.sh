#!/bin/bash
lines="$(cat $1 | wc -l)"
n="$(cat ~/scripts/bash/japanese_random_word/count)"

if [ "$n" -gt "$lines" ]
    then n=1
fi

text=$(sed -n $n"p" $1)

zenity --info --title="Random word Japanese" --text="$text     "

echo $text
n=$((n+1))
echo $n > ~/scripts/bash/japanese_random_word/count
