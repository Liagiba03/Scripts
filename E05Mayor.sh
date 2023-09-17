echo "Numero mayor"
echo "Introduce un numero"
read num1
echo "Introduce numero 2"
read num2
echo "Introduce numero 3"
read num3
if [ $num1 -gt $num2 && $num1 -gt $nim3 ]
	then
	echo $num1 " es mayor"
elif [ $num2 -gt $num1 && $num2 -gt $nim3 ]
	then
	echo $num2 " es mayor"
elif [ $num3 -gt $num1 && $num3 -gt $nim2 ]
	then
	echo $num3 " es mayor"
else
	echo "Son iguales"
fi
