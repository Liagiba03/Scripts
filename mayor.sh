echo "dame un numero"
read x
echo "dame otro numero"
read y
if [ $x -gt $y ]
then 
echo "el numero mayor es : "$x
else
echo "el numero mayor es :"$y
fi
