echo "Factorial de un número"
echo "Escribe un numero para calcular el factorial"
read num
a=1
res=1
fin=1
while [ $a -le $num ]
do
	res=`expr $res \* $a`
	echo $fin " * " $a " = " $res
	a=`expr $a \+ 1`
	fin=`expr $res \+ 0`
	
	
done
