echo "Serie Fibonacci"
echo "Introduce el numero para la serie Fibonacci"
read num
prim=0
seg=1
tre=1
i=1
while [ $i -le $num ]
do
	echo $i " | " $tre
	tre=`expr $prim \+ $seg`
	prim=`expr $seg \+ 0`
	seg=`expr $tre \+ 0`
	i=`expr $i \+ 1`
done

