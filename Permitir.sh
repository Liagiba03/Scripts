echo "Restringir x máquinas"
echo "Dime la clase de ip"
read x
echo "Dime la ip inicial a dropear"
read y
echo "Dime la ip final a dropear"
read z


while [ $y -le $z ]
do
	
	/sbin/iptables --delete INPUT --protocol tcp --source $x$y --dport 22 --jump DROP
	y=`expr $y \+ 1`
	
done
