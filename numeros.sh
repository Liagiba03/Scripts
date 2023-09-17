echo "Dime un numero" 
read numero1 
echo "Dime otro numero" 
read numero2 
echo "Dime el ultimo numero" 
read numero3 

if [ $numero1 -gt $numero2 ]; 
	then 
     if [ $numero2 -gt $numero3 ]; 
     	then
        if [ $numero1 -gt $numero3 ]; 
        then
           echo "$numero1 $numero2 $numero3" 
        else 
           echo "$numero1 $numero3 $numero2" 
        fi 
     else
        if [ $numero1 -gt $numero3 ]; 
        then
                echo "$numero1 $numero3 $numero2"
          else
                echo "$numero3 $numero1 $numero2" 
        fi
        
     fi
else 
     if [ $numero2 -gt $numero3 ]; 
     then
        if [ $numero1 -gt $numero3 ]; 
        then
           echo "$numero2 $numero1 $numero3" 
        else 
           echo "$numero2 $numero3 $numero1" 
        fi 
     else
        if [ $numero1 -gt $numero3 ]; 
        then
                echo "$numero1 $numero2 $numero3"
          else
                echo "$numero3 $numero2 $numero1" 
        fi
        
     fi
fi




