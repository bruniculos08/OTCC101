#! /usr/bin/bash

# https://stackoverflow.com/questions/15668170/if-statement-and-calling-function-in-if-using-bash

is_uint() {
    case $1 in
        '' | *[!0-9]*) return 1;;
    esac
}

iseven() {
    if [ "$(is_uint "$1" ; echo $?)" -ne 0 ] ; then
        echo "argumento invalido";
        return 1;
    elif [ $(expr $1 % 2) -ne 0 ] ; then
        return 1;
    fi
}

isodd() {
    if ! is_uint "$1" ; then
        echo "argumento invalido";
        return 1;
    elif [ $(expr $1 % 2) -ne 1 ] ; then
        return 1;
    fi
}

# is_uint $1 && echo V || echo F
# isodd $1 && echo V || echo F
# iseven $1 && echo V || echo F

# echo "$@"

case $1 in
    Bagre)
        echo ok1;;
    *[a]*)
        echo ok2;;
    *)
        echo default;;
esac