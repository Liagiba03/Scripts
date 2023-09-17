while true
do
	echo ""
	echo "Menu principal"
	echo "1. Tabla"
	echo "2. Factorial"
	echo "3. Serie F"
	echo "4. NUmero mayor"
	echo "5. Edad"
	echo "6. Ordena 3 numeros"
	echo "7. Salir"
	echo "Elije una opcion"
	read x
	case $x in
	1)
	./programa1.sh
	;;
	2)
	./E03Factorial.sh
	;;
	3)
	./E04Fibo.sh
	;;
	4)
	./mayor.sh
	;;
	5)
	./edad.sh
	;;
	6)
	./numeros.sh
	;;
	7)
	exit
	;;
	esac
	
done
