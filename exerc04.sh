#!/bin/bash
echo "Em que ano voce está? "
read IDD
echo "Em que ano voce nasceu? "
read NAS
let VOTE=($IDD - $NAS)
if (( $VOTE >= 18 )); then
	echo "Voce tem $VOTE anos!"
	echo "Voce pode votar neste ano!"
else
	echo "Voce tem $VOTE anos!"
	echo "Voce nao tem idade para votar este ano!"
fi
read YYY
