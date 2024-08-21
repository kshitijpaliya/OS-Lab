### First give permission
### To do this write:
###    chmod a+r+w+x filename
###    chmod 111 filename


### INPUT - OUTPUT
###    echo, read
###        There needs to be space in between variables
#echo "Enter x y"
#read x y # Here thhe input is to be given in the same line, without enter button, only space
#echo $x $y


### BASIC ARITHMETIC OPERATIONS
###    expr
###        Pay attention to the spaces
###        There needs to be spaces between the operators, variables
###        1. $( expr ... ) method
###        2. `expr ...` method
#echo "Enter a value"
#read a
#b=$( expr $a + 1 )
#c=`expr $b + 1`
#echo $a $b $c

###    test[ ]
###        Space must be present after [ & before ]
###        Space must be present between the operands and the operators
#echo "Enter 2 values"
#read a b
#result=$[ a == b ]
#echo $a $b
#echo "a==b: $result"

###    test(( ))
###        Space doesn't matter
###        Usage of $ for variables is not neccessary
#echo "Enter 2 values"
#read a b
#echo "Enter the operator"
#read op
#x=$(($a+1))
#result=$((a $op b))
#echo "$a++ = $x"
#echo "$a $op $b = $result"

###    bc
###        Can perform floating point operations
#echo "Enter 2 values"
#read a b
#echo "Enter the operator"
#read op
#result=`bc -l <<< $a$op$b`
#echo "$a $op $b = $result"
#result=`bc -l <<< $a$op$b|echo "$a $op $b = $result"`
#echo $result


###    CONTROL STATEMENTS
###    if
###        if condition ; then
###            command(s)
###        fi
###    (OR)
###    if condition
###        then
###            command(s)
###    fi
#echo "Enter your marks"
#read a
#result=$[ a >= 35 ]
#if [ "$result" = "1" ] ; then
#echo "Congratulations!!!"
#fi
#if [ "$result" = "0" ] ; then
#echo "Try again next time"
#fi

###    if else
###        if condition ; then
###            command(s)
###        else
###            command(s)
###        fi
#echo "Enter 2 values"
#read a b
#result=$[ a == b ]
#echo $a $b
#if [ "$result" = "0" ] ; then
#echo "a==b: false"
#else
#echo "a==b: true"
#fi

###    else if ladder
###        if condition ; then
###            command(s)
###        elif condition ; then
###            command(s)
###        fi
#echo "Enter your marks"
#read a
#if [ $a == 35 ] ; then
#echo "Just Pass"
#elif (($a<35)) ; then
#echo "Fail"
#else
#echo "Pass"
#fi

###    switch case
###        case word in
###            pattern1) command(s) ;;
###            pattern2) command(s) ;;
###            ...
###            *) command(s) ;;
###        esac
#echo "Enter a number between 1-5"
#read a
#case $a in
#    1 ) echo "ONE";;
#    2 ) echo "TWO";;
#    3 ) echo "THREE";;
#    4 ) echo "FOUR";;
#    5 ) echo "FIVE";;
#    * ) echo "Enter a number between 1-5 only";;
#esac

###    for loop
###        for (( initialization; condition; expo)); do
###            command(s)
###        done
#echo "Enter the number of repititions"
#read n
#for (( i=0; i<n; i++)); do
#echo "Enter an integer between 1-5"
#read a
#case $a in
#    1 ) echo "ONE";;
#    2 ) echo "TWO";;
#    3 ) echo "THREE";;
#    4 ) echo "FOUR";;
#    5 ) echo "FIVE";;
#    * ) echo "Enter an integer between 1-5 only";;
#esac
#done

###    for each loop
###        for variable in list; do
###                command(s)
###            done
x="1 2 3 4 5"
count=0
for i in $x; do
if [ $i = "5" ]; then
echo "Goodbye"
else
echo "$x"
#count=$((count++))
#echo $
fi
done
list="apple banana cherry"

# Iterate over list
for item in $list; do
  echo "$item"
done
