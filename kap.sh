#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Skrypt nalezy uruchomiæ z dwoma parametrami, pierwszym jest szukane rozszerzenie, drugim jest nazwa folderu, do ktorego sa kopiowane"
else
	

echo "Chcesz skopiowaæ wszystkie pliki z rozszerzeniem $1 do folderu $2"\

if [ -d "$2" ]; then
	echo folder nie jest tworzony gdy¿ istnieje
	else
	mkdir "$2"
fi

#touch tmpsrc.roz
#touch tmpdes.roz

find . -iname "*.$1" > tmpsrc.roz
sed -e 's|^./||' tmpsrc.roz > tmpdes.roz
sed -e 's|[^//]*$||' tmpdes.roz > tmp.roz
cat tmp.roz > tmpdes.roz
#rm tmp.roz ##

plik=`head tmpsrc.roz -n 1`
gdzie=`head tmpdes.roz -n 1`
while [ -s tmpsrc.roz ]; do
echo "$gdzie"
sed 1d tmpsrc.roz>tmp.roz
cat tmp.roz>tmpsrc.roz
#rm tmp.roz ##
sed 1d tmpdes.roz>tmp.roz
cat tmp.roz>tmpdes.roz
if [ -d "./$2/$gdzie" ]; then
	echo "--||--  $plik"
	else
	mkdir -p "./$2/$gdzie"
fi
cp "$plik" "./$2/$gdzie"
plik=`head tmpsrc.roz -n 1`
gdzie=`head tmpdes.roz -n 1`
done
rm tmpsrc.roz
rm tmpdes.roz
rm tmp.roz
fi



