DIRECTORIES=("/home/$USER/.icons/Suru++" "/home/$USER/.local/share/icons/Suru++" "/usr/share/icons/Suru++" "/home/$USER/.icons/suru-plus" "/home/$USER/.local/share/icons/suru-plus" "/usr/share/icons/suru-plus" "/home/$USER/.icons/suru-plus-master" "/home/$USER/.local/share/icons/suru-plus-master" "/usr/share/icons/suru-plus-master")

echo "Which type of colour do you prefer? Write the nummber"
echo "1) solid 2) gradient"
read type

if [ "$type" == "1" ]; then
	echo "Write one of these colours to choose your favourite:"
	echo "black gold green\n grey orange purple\n red yellow"
	read color
else
	echo "Write one of these letters to choose your favourite gradient:"
	echo "a) arrogrin b) telinkrin c) mycenean"
	read color
fi

go_dir_to_breeze()
{

	change_colour()
	{
		for f in *svg; do
   			case "$color" in
    		a)
		        perl arrogrin.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    b)
		        perl telinkrin.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    c)
		        perl mycenean.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    black)
		        perl black.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    gold)
		        perl gold.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    green)
		        perl green.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    grey)
		        perl grey.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    orange)
		        perl orangle.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    purple)
		        perl purple.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		    red)
		        perl red.pl "$f" > tmpFile && mv tmpFile "$f"
		        ;;
		esac
		done
	}

	cd apps/16 && change_colour && cd ../../places/16 && change_colour && cd ../../mimetypes/16 && change_colour
	
}

if [ -d $DIRECTORIES ]; then
	go_dir_to_breeze
else
	echo "Icons theme Suru++ does not exist! You should rename the icons theme folder to “suru-plus” or “Suru++”."
fi
