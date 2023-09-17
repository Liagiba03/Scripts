echo "---NOMINA DE TRABAJADORES---"
# Peticion de los datos
echo ""
echo "Nombre del Trabajador: "
read Trabajador
echo "Direccion: "
read Direccion
echo "Puesto: "
read Puesto
echo "Sueldo Semanal: "
read Sueldo_Semanal
echo "Dias Trabajados: "
read Dias_Trabajados
echo "Horas extras Trabajadas: "
read Horas_Extras

# Creacion de las variables
Dias=1
Sueldo_Por_Dia=` expr $Sueldo_Semanal \/ 6 `
Sueldo_Neto=` expr $Sueldo_Semanal \* $Dias_Trabajados \/ 6 `
Extras=` expr $Sueldo_Por_Dia \/ 8 `

echo "----------------------------------"
# echo "Sueldo por dia: "$Sueldo_Por_Dia
# echo "Sueldo neto:"$Sueldo_Neto
# echo "Extras: "$Extras
# echo "Nombre:"$Trabajador
echo "Horas extras trabajadas: "$Horas_Extras

if [ $Horas_Extras -le 8 ]
then
Extra=` expr $Horas_Extras \* $Extras \* 2 `
echo "Sueldo Semanal:"$Sueldo_Neto
echo "Pago de horas extras totales:"$Extra
Total=` expr $Sueldo_Neto \+ $Extra `
echo "Pago sin deducciones: $"$Total

    else if [ $Horas_Extras -gt 8 ]
then
A=` expr 8 \* $Extras \* 2 `
B=` expr $Horas_Extras \- 8 `
C=` expr $B \* $Extras \* 3 `
Suma=` expr $A \+ $C `
echo "Sueldo semanal: $"$Sueldo_Neto
echo "Horas al doble: $"$A
echo "Horas al triple: $"$C
Total=` expr $Sueldo_Neto \+ $Suma `
echo "Pago de horas extras totales: $"$Suma
echo "Pago sin deducciones: $"$Total
fi
fi

echo "----------------------------------"
# Descuento LISR
if [ $Total -le 3000 ]
then
R=` expr $Total \* 4 `
r=` expr $R \/ 100 `
echo "Descuento de LISR: $"$r

else if [ $Total -ge 3001 ]
then
A=` expr $Total \* 7 `
a=` expr $A \/ 100 `
echo "Descuento de LISR: $"$a
fi
fi

# Descuento IMSS
if [ $Total -le 3500 ]
then
K=` expr $Total \* 3 `
k=` expr $K \/ 100`
echo "Descuento de IMSS: $"$k
else if [ $Total -ge 3501 ]
then
P=` expr $Total \* 5 `
p=` expr $P \/ 100 `
echo "Descuento IMSS: $"$p
fi
fi

# Descuento Cuota Sindical
M=` expr $Total \* 2 `
m=` expr $M \/ 100 `
echo "Descuento de cuota sindical: $"$m
F=` expr $r + $a + $k + $p + $m `

# Descuento total de deducciones
echo "Descuento total de Deducciones: $"$F

echo "----------------------------------"

B=` expr $Total - $F `
echo "Trabajador-- "$Trabajador
echo "Direccion-- "$Direccion
echo "Puesto-- "$Puesto
echo "Total a pagar-- $"$B
