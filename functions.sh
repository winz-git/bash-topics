#!/bin/bash

# Display Ordinal Date
function display_ordinal() {
 day=$(date +%d)
  ## debug
  #day=$1
  last_digit=$(($day % 10))
  two_digit=$(($day % 100))
  day_in_array=('11' '12' '13')

  ## search in array
  inarray=0
  for i in ${!day_in_array[*]}
  do
    if [ "$two_digit" -eq "${day_in_array[$i]}" ]; then
      inarray=1
    fi
  done

  ## if not in 11,12,13
  ## get the last digit
  if [ "${inarray}" -eq 0 ]; then
      case "$last_digit" in
        1)
           day_str="${day}st"
        ;;
        2)
           day_str="${day}nd"
        ;;
        3)
           day_str="${day}rd"
        ;;
        *)
           day_str="${day}th"
        ;;
      esac
  else
     day_str="${day}th"
  fi

  # Debug
  echo $(date +"%r, ${day_str} %B %Y")
 }
 
 # run
 display_ordinal
