#!/bin/bash

touch contacts.txt

crear() { 
	echo " "
	echo "Nombre"
	read nombre 
	echo "Apellido"
	read apellido
	echo "email"
	read email
	echo "Tel"
	read tel 
	echo " "
	echo "$nombre|$apellido|$email|$tel" >> contacts.txt
}

buscar() {
	echo " "
	echo "Introduzca el nombre que quiere buscar: "
	read busqueda
	
	grep -i "$busqueda" contacts.txt
	echo " "
}

while true; do
	echo " "
	echo "Menu"

	echo "1 - Crear"
	echo "2 - Buscar"
	echo "3 - Ayuda"
	echo "4 - Salir"
	read -p "Cual es su opcion " opcion
	echo " "

	case $opcion in
		1) 
			crear
			;;
		2) 
			buscar
			;;
		3) 
			ayuda
			;;
		4)
			exit 0
	esac
done

#	echo "Contacto agregado, desea volver al menu principal? S/N "
#	read opcion_1

#if [ $opcion_1 = 'S' ];
#then
#	main_menu
#else
#	exit 1
#fi
