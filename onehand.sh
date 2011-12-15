#!/bin/bash
#Alt 0160 dla spacji, nie u¿ywaæ zwyk³ych spacji, (przynajmniej mój komputer je skraca, najlepiej wpisaæ zwyk³ymi a potem zast¹piæ twardymi) W jakim celu ja piszê te komentarze? 
A[0]='          '
A[1]=' /------\ '
A[2]=' |      | '
A[3]=' | /--\ | '
A[4]=' | |  | | '
A[5]=' | |--| | '
A[6]=' | |  | | '
A[7]=' |      | '
A[8]=' \------/ '
A[9]='__________'

A[10]='          '
A[11]=' AAAAAA   '
A[12]=' A    A   '
A[13]=' A    A   '
A[14]=' A   A    '
A[15]='  A  A    '
A[16]=' A   A    '
A[17]=' A    A   '
A[18]=' AAAAAA   '
A[19]='__________'

A[20]='+         '
A[21]='-______   '
A[22]='+______   '
A[23]='-______   '
A[24]='+_____    '
A[25]='-_____    '
A[26]='+_____    '
A[27]='-______   '
A[28]='+______   '
A[29]='__________'

# Jak widaæ nie znam siê na robieniu ASCII ART, kod wymaga by grafiki mia³y 10 linijek numerowanych od 0 do 9 powiêkszonych o indeks 

QQ='----------'
AB="A11"
i=3 #liczba elementów do ka¿dego pola, w przypadku dodania kolejnych oczywiœcie zwiêkszyæ.
q=$(( $RANDOM % $i ))
w=$(( $RANDOM % $i ))
e=$(( $RANDOM % $i ))
y=0
while [ $y -le  9 ]; do #pêtla s³u¿y do wyœwietlenia wszystkich liñ grafik, 
# 
let j=$q*10+$y
let k=$w*10+$y
let l=$e*10+$y

echo "${A[$j]}||${A[$k]}||${A[$l]}" #wyœwietlenie

y=$[y + 1]
done
echo "$QQ++$QQ++$QQ"

if [ $j = $k ]; then   #Troche to ma³o eleganckie rozwi¹zanie, gdy¿ trzeba za ka¿dym razem wstawiaæ nowe warunki, ale nie wiemda siê ³adniej. W³aœciwie to mo¿na by teoretycznie zrobiæ zmienne tablicowe, przypisaæ wygrane i zrobiæ listê...
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
