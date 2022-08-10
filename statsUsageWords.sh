#!/bin/bash
source filtro.sh
texto=$(cat texto.txt)
touch texto2.txt
texto2=texto2.txt
for i in $texto
do
  if [ $(expr length $(filtro $i)) -ge 4 ]
  then
    (echo $(filtro $i))>>$texto2
  fi
done
cat $texto2 | sort | uniq -c | sort -r | head
rm $texto2
exit 0
