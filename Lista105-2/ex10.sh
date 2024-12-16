#! /usr/bin/bash

n1=$((RANDOM % 100))
n2=$((RANDOM % 100))

read -p "quanto eh $n1 + $n2?" resp

# O operador "==" compara strings; para comparar números se usaria "-eq".
if [ "$resp" == $(echo $(($n1 + $n2))) ]; then
        echo "certo."
        exit 0
else
        echo "errado."
        exit 1
fi