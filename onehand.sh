#!/bin/bash
#Alt 0160 dla spacji, nie u�ywa� zwyk�ych spacji, (przynajmniej m�j komputer je skraca, najlepiej wpisa� zwyk�ymi a potem zast�pi� twardymi) W jakim celu ja pisz� te komentarze? 
A[0]='����������'
A[1]='�/------\�'
A[2]='�|������|�'
A[3]='�|�/--\�|�'
A[4]='�|�|��|�|�'
A[5]='�|�|--|�|�'
A[6]='�|�|��|�|�'
A[7]='�|������|�'
A[8]='�\------/�'
A[9]='__________'

A[10]='����������'
A[11]='�AAAAAA���'
A[12]='�A����A���'
A[13]='�A����A���'
A[14]='�A���A����'
A[15]='��A��A����'
A[16]='�A���A����'
A[17]='�A����A���'
A[18]='�AAAAAA���'
A[19]='__________'

A[20]='+���������'
A[21]='-______���'
A[22]='+______���'
A[23]='-______���'
A[24]='+_____����'
A[25]='-_____����'
A[26]='+_____����'
A[27]='-______���'
A[28]='+______���'
A[29]='__________'

# Jak wida� nie znam si� na robieniu ASCII ART, kod wymaga by grafiki mia�y 10 linijek numerowanych od 0 do 9 powi�kszonych o indeks 

QQ='----------'
AB="A11"
i=3 #liczba element�w do ka�dego pola, w przypadku dodania kolejnych oczywi�cie zwi�kszy�.
q=$(( $RANDOM % $i ))
w=$(( $RANDOM % $i ))
e=$(( $RANDOM % $i ))
y=0
while [ $y -le  9 ]; do #p�tla s�u�y do wy�wietlenia wszystkich li� grafik, 
# 
let j=$q*10+$y
let k=$w*10+$y
let l=$e*10+$y

echo "${A[$j]}||${A[$k]}||${A[$l]}" #wy�wietlenie

y=$[y + 1]
done
echo "$QQ++$QQ++$QQ"

if [ $j = $k ]; then   #Troche to ma�o eleganckie rozwi�zanie, gdy� trzeba za ka�dym razem wstawia� nowe warunki, ale nie wiemda si� �adniej. W�a�ciwie to mo�na by teoretycznie zrobi� zmienne tablicowe, przypisa� wygrane i zrobi� list�...
	if [ $k = $l ]; then
		if [ $k = 0 ]; then
		echo WYGRALES 
		elif [ $k = 1 ]; then
		echo noz
		elif [ $k = 2 ]; then
		echo kroa
		else 
		echo WON
		fi
	fi	
fi
