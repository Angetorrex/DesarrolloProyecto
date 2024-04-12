#!/bin/bash

if [[ "$#" -ne "1" ]]
then
	echo "Pase un parámetro valido: -a o -t"
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
			while [[ "$OpTema" -ne "1" && "$OpTema" -ne "2" && "$OpTema" -ne "3" && "$OpTema" -ne "4" ]]; do
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
		elif [[ "$1" = "-t" ]]
		then	
			echo -e "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema: \n"
			echo -e "\t1) Cascada"
		        echo -e "\t2) Espiral"
        		echo -e "\t3) Modelo V\n"
			OpTema=" "
	        	while [[ "$OpTema" -ne "1" && "$OpTema" -ne "2" && "$OpTema" -ne "3" ]]; do
        	        	read -p "Opción: " OpTema
	        	        case $OpTema in
        	        	1)
                	        	Seccion="Cascada"
					Archivo="Cascada.inf"
        	                	;;
	        	        2)
        	        	        Seccion="Espiral"
					Archivo="Espiral.inf"
	                	        ;;
		                3)
        		                Seccion="Modelo V"
					Archivo="Modelo_V.inf"
	                	        ;;
				*)
					echo "Error, Opción inválida"
					;;
	                	esac
        		done
		fi
		echo ""
		while true; do
			Opcion=" "
			echo -e "Usted está en la sección $Seccion, seleccione la opción que desea utilizar: \n"
		        echo -e "\t1) Agregar información"
        		echo -e "\t2) Buscar"
		        echo -e "\t3) Eliminar información"
			echo -e "\t4) Leer base de información"
			echo -e "\t5) Menú anterior"
			echo -e "\t6) Salir\n"
			read -p "Opción: " Opcion
                	echo ""
			case $Opcion in
                	1)
               			read -p "Concepto: " Concepto
                               	read -p "Definición: " Definicion
		         	echo "[$Concepto] .- $Definicion." >> "$Archivo"
        	                echo -e "\nSe agregó el concepto\n"
                	        ;;
			2)
				if [[ -e $Archivo ]]
				then
					read -p "Concepto a buscar: " BuscarConcepto
					ConceptoBuscado=$(grep "^\[$BuscarConcepto\]" "$Archivo")
					if [[ -n "$ConceptoBuscado" ]]
					then
						echo -e "\n$ConceptoBuscado\n"
					else
						echo -e "\nNo se encontró el concepto\n"
					fi
				else
					echo -e "El archivo no existe\n"
				fi
				;;
    			3)
				if [[ -e $Archivo ]]
				then
					read -p "Concepto a eliminar: " EliminarConcepto

					if grep "^\[$EliminarConcepto\]" "$Archivo"
					then
						sed -i "/^\[$EliminarConcepto\]/d" "$Archivo"
						echo -e "\nSe eliminó el concepto\n"
					else
						echo -e "\nCNo se ha encontrado el concepto\n"
					fi
				else
					echo -e "El archivo no existe\n"
				fi
				;;
			4)
				if [[ -e $Archivo ]]
				then 
					cat "$Archivo"
					echo ""
				else
					echo -e "El archivo no existe\n"
				fi
				;;
			5)
				:
				;;
			6)
				exit 0
				;;
			*)
				echo "Error, Opción inválida"
				;;
			esac
		done
	done
else
	echo "Parámetro no válido"
fi
