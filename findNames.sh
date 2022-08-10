#!/bin/bash
source filtro.sh
nombre=$(cat nombre.txt)
touch texto2.txt
texto2=texto2.txt
regex="^[A-Z]{1}([a-z]+$)"
for i in $nombre
do
  if [[ $(filtro $i) =~ $regex ]]
  then
    echo $(filtro $i) >> $texto2
  fi
done
echo "A continuacion una lista de los nombres propios:" ; cat $texto2
rm $texto2
exit 0
