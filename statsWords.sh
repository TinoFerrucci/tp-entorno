#!/bin/bash
source filtro.sh
texto=$(cat texto.txt)
pal_corta=""
pal_larga=""
total_pal=0
long_total=0
for i in $texto
do
filt=$(filtro $i)
  if [ $total_pal == 0 ]
  then
    pal_corta=$filt
    pal_larga=$filt
  else
    if [ ${#filt} -gt ${#pal_larga} ]
    then
      pal_larga=$filt
    elif [ ${#filt} -lt ${#pal_corta} ]
    then
      pal_corta=$filt
    fi
  fi
  total_pal=$(($total_pal + 1))
  long_total=$(($long_total + ${#filt}))
done
echo "La palabra mas corta es: $pal_corta"
echo "La palabra mas larga es: $pal_larga"
echo "La longitud promedio de las palabras es de $(echo "scale=2; (($long_total/$total_pal))" | bc) caracteres"
