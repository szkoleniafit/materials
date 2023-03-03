#!/bin/env bash

echo "Pierwszy skrypt"
echo "Skrypt jest zbiorem poleceń"
echo "Polecenia wykonują się w określonej kolejności"

echo $((2+1))

echo "Zamień:na:spacje" | sed 's/:/ /g'

pwd
cd ..
pwd
tree
