echo "CUMPLIR IGUALDAD Z² = X² + Y²"
echo "Ingresa el valor de z"
read z
y=`expr $z \+ 0`
x=`expr $z \+ 0`

##echo "x: "$x
##echo "y: "$y
echo "z²: "$valorF
contX=1
contY=1
con=1



while [ $con -le $z ]
do
	##echo "con: "$con
	
	valorF=`expr $con \* $con`
	##EVALUAR CADA EXPRESION
			while [ $contX -le $con ]
				do
					
					x=`expr $contX \+ 0`
					##echo "x: "$x
					##ELEVAR NUMERO X
					elX=`expr $contX \* $contX`
						while [ $contY -le $z ]
						do
							
							y=`expr $contY \+ 0`
							##echo "y: "$y
							##ELEVAR NUMERO Y
							elY=`expr $contY \* $contY`
							
							##EXPRESION ELEVADA AL CUADRADO
							suma=`expr $elY \+ $elX`
							
							##FILTRO PARA SABER CUAL CUMPLE LA CONDICIÓN
							
							if [ $suma -eq $valorF ]
								then 
								echo $con": "$valorF" = "$elX" + "$elY
							fi
							contY=`expr $contY \+ 1`
							
						done
					contY=1
					contX=`expr $contX \+ 1`
					
				done
	##FIN EVALUAR CADA EXPRESION
	contX=1
	con=`expr $con \+ 1`
done
