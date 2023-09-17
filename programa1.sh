echo "Dime un número"
read x
echo "Dime otro número"
read y
r=`expr $x + $y`
echo "El resultado es" $r
