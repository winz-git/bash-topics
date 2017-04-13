# bash topics


# Display the Ordinal of the Date in bash

**Output:**<br/>
03:02:04 AM, 13th April 2017


# Search an element in array
```bash
day_in_array=('11' '12' '13')
two_digit=12

 ## search in array
  inarray=0
  for i in ${!day_in_array[*]}
  do
    if [ "$two_digit" -eq "${day_in_array[$i]}" ]; then
      inarray=1
    fi
  done

 # if not in array
 if [ "${inarray}" -eq 0 ]; then
     echo "NOT in array"
 else
     echo "exists in array"
 fi

```
