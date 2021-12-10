#!/bin/bash
#if [ -z "$(ls -A /tmp)" ]; then
#	echo "Empty"
#	sleep 15
#else
#	echo "Not Empty"
#	java -jar /tmp/aplicacion.jar
#fi
n=0
while [ $n != 1 ]
do
	if [ -z "$(ls -A /tmp/app)" ]; then
		echo "Compilando..."
		sleep 5
	else
		echo "Archivo compilado."
		n=1
		break
	fi
done
echo 'Todo Listo!'
