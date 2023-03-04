#!/bin/bash

if [ $((2+2)) -eq 4 ]; then
  echo "Wynik 4"
else
  echo "Błąd"
fi

if [ "$((2+2))" == "5" ]; then
  echo "Wynik 4"
else
  echo "Błąd"
fi

if [ "a" != "a" ]; then
  echo "a != b"
elif [ "c" != "d" ]; then
  echo "c != d"
fi

if [ 22 -ne 21 ]; then
  if [ "34" != "34" ]; then
    echo "34 != 54"
  elif [ "a" == "b" ]; then
    echo "Błąd"
  else
    echo "Koniec IF"
  fi
fi
