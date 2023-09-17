echo "dame tu edad "
read x
if [ $x -le 2 ]
then 
echo "eres un bebe p"
else 
echo " "
fi
if [ $x -gt 2 ] && [ $x -le 17 ]
then
 echo "eres un nino"
else if [ $x -gt 17 ] && [ $x -le 25 ]
then 
echo "eres joven "
else if [ $x -gt 25 ] && [ $x -le 55 ]
then 
echo "suegr@"
else if [ $x -gt 55 ]
then 
echo "eres un abuelito "
fi
fi
fi
fi
 
