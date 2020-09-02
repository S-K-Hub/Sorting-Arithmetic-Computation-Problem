#! /bin/bash
read -p "Enter input a: " a
read -p "Enter input b: " b
read -p "Enter input c: " c
declare -A results
operation1=$((a+b*c))
results[1]=$operation1
operation2=$((a*b+c))
results[2]=$operation2
operation3=$((c+a/b))
results[3]=$operation3
operation4=$((a%b+c))
results[4]=$operation4
counter=0
for key in "${!results[@]}"
do
	resultsArray[((counter++))]="${results[$key]}"
done
echo "Array in descending order: "
echo "${resultsArray[@]}" | tr ' ' '\n' | sort -nr
