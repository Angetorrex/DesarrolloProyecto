#!/bin/bash
if [[ "$#" -ne "1" ]]
then
	echo "Pasa un parámetro:"
elif [[ "$1" = "-a" || "$1" = "-t" ]]
then
	while true; do
		if [[ "$1" = "-a" ]]
		then			
			echo -e "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema: \n"
			echo -e "\t1) SCRUM"
			echo -e "\t2) X.P."
        		echo -e "\t3) Kanban"
		        echo -e "\t4) Crystal\n"
			OpTema=" "
			while [[ $OpTema -ne 1 && $OpTema -ne 2 && $OpTema -ne 3 && $OpTema -ne 4 ]]; do
				read -p "Opción: " OpTema
				case $OpTema in
				1)
					Seccion="SCRUM"
					Archivo="SCRUM.inf"
					;;
				2)
					Seccion="X.P."
					Archivo="XP.inf"
					;;
				3)
					Seccion="Kanban"
					Archivo="Kanban.inf"
					;;
				4)	
					Seccion="Crystal"
					Archivo="Crystal.inf"
					;;
				*)
					echo "Opción inválida"
					;;
				esac
			done
		fi
	done
else
	echo "Parámetro no válido"
fi

