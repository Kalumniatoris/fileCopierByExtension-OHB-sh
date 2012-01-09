#!/bin/bash
#  nie u�ywa� zwyk�ych spacji, (przynajmniej m�j komputer je skraca, najlepiej wpisa� zwyk�ymi a potem zast�pi� twardymi) W jakim celu ja pisz� te komentarze? 
A[0]='����������' ## $%^&^% znaleźć coś innego, � się nie wyświetla prawidłowo ani na gicie ani na sigmie przez putty
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


QQ='----------'
money=100

i=3 #liczba element�w do ka�dego pola, w przypadku dodania kolejnych oczywi�cie zwi�kszy�.
q=$(( $RANDOM % $i ))
w=$(( $RANDOM % $i ))
e=$(( $RANDOM % $i ))
y=0

while [ $money -gt 0 ]; do
let money=$money-1
while [ $y -le  9 ]; do #p�tla s�u�y do wy�wietlenia wszystkich li� grafik, 
# 
let j=$q*10+$y
let k=$w*10+$y
let l=$e*10+$y

echo "${A[$j]}||${A[$k]}||${A[$l]}" #wy�wietlenie

y=$[y + 1]
done
echo "$QQ++$QQ++$QQ"

if [ $j = $k ]; then   
	if [ $k = $l ]; then
		echo "Trafiles trzy identyczne, tu powinien byc jakis kod rozrozniajacy wygrane"
		let money=$money+10
	fi

fi
echo "Masz jeszcze $money kasy"
done
echo "zbanrutowales"
