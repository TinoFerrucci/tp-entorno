#!/bin/bash
texto=$(cat texto.txt)
contador=0
while IFS= read -r line
do
  if [[ ${#line} -eq 0 ]]
  then
    contador=$(( $contador + 1 ))
  fi
done < "texto.txt"
echo "Hay $contador lineas vacías."
exit 0
