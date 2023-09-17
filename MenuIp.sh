while true
do
	echo ""
	echo "Menu principal"
	echo "1. DENEGAR Ping remoto por ip"
	echo "2. PERMITIR Ping remoto por ip"
	echo "3. DENEGAR Puerto 22 por ip"
	echo "4. PERMITIR Puerto 22 por ip"
	echo "5. DENEGAR Puerto 22 por MAC"
	echo "6. PERMITIR Puerto 22 por MAC"
	echo "7. DENEGAR Puerto 22 por un rango de ips"
	echo "8. PERMITIR Puerto 22 por un rango de ips"
	echo "9. SALIR"
	echo "Elije una opcion"
	read x
	case $x in
	1)
		echo "Escribe la dirección ip a denegar"
		read ip
		/sbin/iptables --append INPUT --protocol icmp --source $ip --jump DROP
	;;
	2)
		echo "Escribe la dirección ip a permitir"
		read ip
		/sbin/iptables --delete INPUT --protocol icmp --source $ip --jump DROP
	;;
	3)
		echo "Escribe la dirección ip a denegar por puerto 22"
		read ip
		/sbin/iptables --append INPUT --protocol tcp --source $ip --dport 22 --jump DROP
	;;
	4)
		echo "Escribe la dirección ip a permitir por puerto 22"
		read ip
		/sbin/iptables --delete INPUT --protocol tcp --source $ip --dport 22 --jump DROP
	;;
	5)
		echo "Escribe la direccion MAC a denegar"
		read dire
		/sbin/iptables --append INPUT --protocol tcp --dport 22 -m mac --mac-source $dire --jump DROP
	;;
	6)
		echo "Escribe la direccion MAC a permitir"
		read dire
		/sbin/iptables --delete INPUT --protocol tcp --dport 22 -m mac --mac-source $dire --jump DROP
	;;
	7)
	./Denegar.sh
	;;
	8)
	./Permitir.sh
	;;
	9)
	exit
	;;
	esac
	
	/sbin/iptables -nL
	
done

/sbin/iptables --delete INPUT --protocol tcp --dport 22 -m mac --mac-source c8:f7:50:58:2e:da --jump DROP

