##Proyecto del primer parcial
Aplicación de los temas vistos en el parcial 1. Realizaremos una aplicación que nos ayude a aprender acerca de las diferentes metodologías de desarrollo ágil de software.

##Empezando

Los pasos a realizar para este proyecto son:
Paso 1: Programe en bash una aplicación que requiera un parámetro al ejecutarse -a (metodologías ágiles) y -t (metodologías tradicionales ) desplegará el siguiente menú en la terminal: 
*Opción -a 
Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:
            1. SCRUM 
            2. X.P. 
            3. Kanban 
            4. Crystal 
*Opción -t
Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:
            1. Cascada 
            2. Espiral 
            3. Modelo V 

Paso 2: Una vez seleccionado un tema en especifico deberá de mostrar las siguientes opciones:
Usted esta en la sección ${nombre de la sección}, seleccione la opción que desea utilizar.
            1. Agregar información 
            2. Buscar 
            3. Eliminar información 
            4. Leer base de información. 
Paso 3: La idea de este sub menú es almacenar información en archivos con extensión .inf (uno por cada metodología) el cual tendrá la siguiente estructura:
[concepto(1)] .- Definición.
[concepto(2)] .- Definición.
[concepto(3)] .- Definición.
.
.
.
[concepto(n)] .- Definición.
Ejemplo:

[sprint] .-  Es el nombre que va a recibir cada uno de los ciclos o iteraciones que vamos a tener dentro de dentro de un proyecto
[burndown chart] .- es una representación gráfica del trabajo por hacer en un proyecto en el tiempo.
[product owner] .- -El P.O. se asegura de que el equipo Scrum trabaje de forma adecuada desde la perspectiva del negocio.

Paso 4: Al agregar información se debe solicitar el identificador del concepto y la definición al guardarlo se debe de formatear y anexar al final del archivo.
Paso 5: Al ejecutar la opción buscar deberá solicitar el elemento a buscar dentro del archivo (se debe ubicar el identificador utilizando expresiones regulares).
Paso 6: Al eliminar información debe solicitarnos el concepto y quitarlo del archivo.
Paso 7: Al seleccionar leer la base de información nos debe de imprimir en pantalla el contenido del archivo.
Paso 8: Al terminar la ejecución de un comando debe pedirnos una siguiente opción, volver al menú anterior o terminar la ejecución.
Paso 9:  Empaquete en una imagen de docker su aplicación bash, deberá al ejecutarse un contenedor lanzar inmediatamente su aplicación. 
Paso 10: Suba a GitHub, gitlab y bitbucket su proyecto, el repositorio deberá contener un archivo readme.md con la plantilla de proyectos vista en la tarea de clase y deberá contener los nombres de cada integrante del equipo, adicionalmente suba la imagen a dockerhub.

##Requisitos previos

Para ejecutar este proyecto se necesitará tener la termina de Linux. Además de tener descargado Git y Docker.  


##Instalacion:
Git
    • sudo apt update
    • sudo apt install git
    • git --version
Docker
    • sudo apt update
    • sudo apt install apt-transport-https ca-certificates curl software-properties-common
    • curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    • sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    • sudo apt update
    • sudo apt install docker-ce
    • sudo docker run hello-world

