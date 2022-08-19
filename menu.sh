#!/bin/bash
clear
PS3="Elija una opción: "
select opcion in "statsWords.sh" "statsUsageWords.sh" "findNames.sh" "statsSentences.sh" "blankLinesCounter.sh" "SALIR"
do
  if [ $REPLY == 6 ]
  then
    echo "Programa finalizado"
    break
  elif [[ $REPLY -ge 1 ]] && [[ $REPLY -le 5 ]]
  then
    echo "Usted eligio la opcion $REPLY. Cargando $opcion"
    echo "Puede demorar unos segundos"
    ./$opcion
    echo "" ; echo "---------------------------------------" ; echo ""
    continue
  else
    echo "Elija una de las opciones correctas"
    continue
  fi

done
