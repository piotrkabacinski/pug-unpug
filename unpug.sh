#!/bin/bash

dir="./src/"

function modify {
    fromExt=$1
    toExt=$2
    except=$3

    for file in $dir*.$fromExt; do
        if [[ ! "$file" == "$dir$except" ]]; then
            mv $file $dir`basename $file .$fromExt`.$toExt;
        fi
    done

    echo "\033[1;32mFiles extension modified from ."$1 "to ."$2 "in" $dir "\033[0m";

    if [[ $except != "" && -f $dir$except ]]; then
        echo "\033[1;32m...except" $dir$except "\033[0m";
    fi
}

if [ "$1" == "" ]; then
    echo "Argument missing, don't know what to do :("
else
    case "$1" in
        "--unpug")
            read -p "Are you sure you want to unpug? (y/n)" choice
            case "$choice" in
                y|Y ) modify "pug" "pxx" "$2";;
                n|N ) ;;
                * ) echo "Invalid value";;
            esac
            ;;
        "--repug")
            echo "Repugging..."
            modify "pxx" "pug"
            ;;
        *)
            echo "'$1' is not a valid flag"
            ;;
    esac
fi
