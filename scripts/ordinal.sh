#!/bin/bash

n=$1

case $n in
  11|12|13) echo "th" ;;
  *1) echo "st" ;;
  *2) echo "nd" ;;
  *3) echo "rd" ;;
  *)  echo "th" ;;
esac

