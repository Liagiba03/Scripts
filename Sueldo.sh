echo ""
echo "Ingresa los datos que se pidan del trabajador"
echo ""
echo "Nombre del trabajador"
read nombre
echo "Direccion"
read dire
echo "Puesto del trabajador"
read puesto
echo "Sueldo semanal del trabajador"
read sueldoSem
echo "Dias trabajados"
read diasT
echo "Ingresa las horas extras que trabajaste"
read horasE

if [ $diasT -gt 6 ]
	then 
	echo "No puedes trabajar más de 6 dias"
	else
		pagoDia=`expr $sueldoSem \/ 6`
		pagoHora=`expr $pagoDia \/ 8`
		doble=`expr $pagoHora \* 2`
		triple=`expr $pagoHora \* 3`
		
		if [ $horasE -le 8 ]
		then
			horasETotales=`expr $doble \* $horasE`
		echo "Horas Totales Extras " $horasETotales
		elif [ $horasE -gt 8 ]
		then
			horasTriples=`expr $horasE \- 8`
			horasDobles=`expr 8 \* $doble`
			horasTRiples=`expr $triple \* $horasTriples`
			horasETotales=`expr $`
			
		fi
		
	
	fi
