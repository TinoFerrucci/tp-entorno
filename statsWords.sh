#!/bin/bash
source filtro.sh
texto=$(cat texto.txt)
pal_corta="palabramuymuymuylarga"
pal_larga="p"
total_pal=0
long_total=0
for i in $texto
do
  if [ $total_pal == 0 ]
  then
    pal_corta=$i
    pal_larga=$i
  else
    if [ $(expr length $(filtro $i)) -gt $(expr length $pal_larga) ]
    then
      pal_larga=$(filtro $i)
    elif [ $(expr length $(filtro $i)) -lt $(expr length $pal_corta) ]
    then
      pal_corta=$(filtro $i)
    fi
  fi
  total_pal=$(($total_pal + 1))
  long_total=$(($long_total + $(expr length $(filtro $i))))
done
echo "La palabra mas corta es: $pal_corta"
echo "La palabra mas larga es: $pal_larga"
echo "La longitud promedio de las palabras es de $(echo "scale=2; (($long_total/$total_pal))" | bc) caracteres"
