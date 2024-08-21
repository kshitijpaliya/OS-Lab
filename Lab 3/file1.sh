#echo -> prints
#read -> takes input


echo 'Enter a number'
read a
b=$( expr $a + 1 )
c=`expr $b + 1`
echo $a $b $c


echo 'Enter a char'
read a
echo $a

echo 'Enter a string'
read a
echo $a


echo 'Enter a float'
read a
echo $a
