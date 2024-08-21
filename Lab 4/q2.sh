num=$#
for (( i=1; i<=num; i++)); do
	docname=${!i}
	#rm docname
	echo "$docname"
	rm $docname
done
