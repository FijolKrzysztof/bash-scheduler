#!/bin/bash

PS3="Jaki masz problem?: "

select opt in Brak/Wyjście Depresja Samotność Wygląd Nie_Wiem_Czego_Chcę; do
	echo ""
  	case $opt in
    		Depresja)
			echo "Przeczytaj książkę 'Optymizmu można się nauczyć'"
			echo "https://drive.google.com/drive/folders/1XivI9B4D8sDbLG35-Qpvm-vMQZR7WpjL";;
		Samotność)
			echo "Położenie się i rozmowa z samym sobą, choćby szeptem, ale nie w myślach tylko na głos."
			echo "Jeśli rozmowa się nie klei, to można obejrzeć jakiś film, poczytać książkę i dopiero."
			echo "Zastanów się też czy nie odczówasz depresji, bo na depresję są sprawdzone sposoby.";;
		Wygląd)
      			echo "Źle wyglądasz? Musisz to czymś zrekompensować! - Pieniądze, Status, Osobowość";;
    		Nie_Wiem_Czego_Chcę)
			echo "Piramida maslowa zawiera spis potrzeb człowieka:"
			echo "https://www.google.com/search?q=piramida+maslowa&sxsrf=ALiCzsZq5HIqRK-I6awbfFtlYKwzpPapUA:1651399583670&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiBjcTshr73AhVMlosKHdemAi4Q_AUoAXoECAIQAw&biw=1920&bih=947&dpr=1#imgrc=qw0uA1c2xDoXAM";;
		Brak/Wyjście)
      			break;;
    		*)
      			echo "Invalid option $REPLY";;
  	esac
	echo ""
done
