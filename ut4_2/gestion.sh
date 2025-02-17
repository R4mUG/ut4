#!/bin/bash

export GDK_BACKEND=x11

nombre_proceso=$1

echo "El nombre del proceso es: " $nombre_proceso


pidof $nombre_proceso
if [[ $? == 0 ]];then
	# si es 0 es que el programa fue iniciado
	pkill -f $nombre_proceso 
	./menu.sh
else 
	# en caso contrario es que no fue iniciado
	$nombre_proceso
fi



