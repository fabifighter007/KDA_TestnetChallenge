#!/bin/bash

## declare an array variable
#declare -a arr=("kda-111" "kda-112" "kda-121" "kda-122" "kda-131" "kda-132" "kda-141" "kda-151" "kda-161" "kda-171" "kda-181" "kda-211" "kda-311")

declare -a arr
i=1
for d in */
do
    arr[i++]="${d%/}"
done


## now loop through the above array
for i in "${arr[@]}"
do
   cd "$i"
   echo "$i"
   docker run --name "$i" -d -v ''$PWD/.env:/app/.env:ro'' --restart always kadena/relay-app
   cd ..
   # or do whatever with individual element of the array
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also
