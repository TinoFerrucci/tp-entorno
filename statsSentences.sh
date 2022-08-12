#!/bin/bash
source filtro.sh
texto=$(cat texto.txt)
o_corta=""
o_larga=""
total_o=0
long_total=0
while IFS= read -r line
do
  if [ $total_o == 0 ]
  then
    o_corta=$line
    o_larga=$line
  else
    if [[ ${#line} -gt ${#o_larga} ]]
    then
      o_larga=$line
    elif [[ ${#line} -lt ${#o_corta} ]]
    then
      if [[ ${#line} != 0 ]]
      then
        o_corta=$line
      fi
    fi
  fi
  total_o=$(( $total_o + 1 ))
  long_total=$(( $long_total + ${#line} ))
done < "texto.txt"
echo "La oracion mas corta es: $o_corta"
echo "La oracion mas larga es: $o_larga"
echo "El promedio de cada oración es de $(echo "scale=2;(($long_total/$total_o))" | bc) caracteres"
exit 0
