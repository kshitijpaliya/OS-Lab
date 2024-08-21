#echo "\$* $*"
#echo "\$# $#"
#echo "\$@ $@"
#echo "\$0 $0"
#echo "\$1 $1"
#echo "\$2 $2"
#echo "\$3 $3"
#echo "\$4 $4"
#echo "\$5 $5"
#echo "\$6 $6"
#echo "\$7 $7"
#echo "\$8 $8"
#echo "\$9 $9"
#echo "\${10} ${10}"

#arr1=("aaa" "bbb" "ccc")
#echo "${arr1[0]}"
#echo "${arr1[1]}"
#echo "${arr1[2]}"

#arr2=(1 2 3)
#echo "${arr2[0]}"
#echo "${arr2[1]}"
#echo "${arr2[2]}"

#declare -a arr3
#echo "Enter the values into the array: "
#read -a arr3
#echo "Values: "
#for i in ${arr3[@]}; do
#	echo -n $i " "
#done
#echo "\n"

#declare -a arr4
#echo "Enter the values into the array: "
#read -a arr3
#j=0
#echo "Values: "
#for i in $@ do
#	arr4[j]=$i
#	((j++))
#done
#echo "${arr4[@]}"

func1(){
	a=$1
	b=$2
	c=`echo $a+$b|bc`
	echo $c
}
func1 3 4
#"$@"

#func2(){
#	a=$1
#	b=$2
#	c=`echo $a+$b|bc`
#	echo $a $b $c
#}
#retval=$(func2 1 2)
#echo $retval

func3(){
	local p1=("${!1}")
	local p2=("${!2}")
	for i in "${p1[@]}"; do
		for j in "${p2[@]}"; do
			if [[ "$i" == "$j" ]]; then
				echo "$i"
				echo "$j"
			fi
		done
	done
}
a=(foo bar baz)
b=(foo bar qux)
func3 a[@] b[@]

