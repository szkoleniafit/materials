#!/bin/bash


function witam(){
  echo "Witam"
}

function dodaj(){
  echo $((2345 + 1111))
}

function parametr(){
  echo "2345 + 1111 = $1"
}

function koniec(){
  echo "Koniec"
}


witam
parametr $(dodaj)
koniec
