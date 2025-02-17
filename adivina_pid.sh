#!/bin/bash

pid_script=$$

intentos=10

# -eq es igual
# -lt menor que
# -gt mayor que

while [[ $intentos -gt 0 ]]; do
	clear
	read -p "Indica el PID" user_pid
	
	if [[ $user_pid -lt $pid_script ]]; then
		read -p "El PID es mayor👆️"
		read -n1 -p "Te quedan $intentos intentos..."	
	elif [[ $user_pid -gt $pid_script ]]; then
		read -p "El PID es menor👇️"
		read -n1 -p "Te quedan $intentos intentos..."	
	elif [[ $user_pid -eq $pid_script ]]; then
		read -p "El PID es $pid_script, felicidades🤩️"
		break
	fi
	
	
	intentos=$((intentos-1))
	echo "Fin del programa..."
done
