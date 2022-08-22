# Resolucion Reto7-bonus
Para cumplir con el reto y requisitos tecnicos genere un nuevo archivo "index.php" con codigo html segun lo solicitado y codigo PHP incluido en el archivo mes.php

A continuacion corri el siguiente comando de docker donde mapeo volumen local donde se encuentra los archivos .php y evito ingresar al contenedor e instalar nano.

````
docker run -d --name web -p 8000:80 -v ${PWD}:/var/www/html php:7.4-apache
````
Otros comando que podemos utilizar para copiar archivos dentro del contenedor son:

docker cp index.php web:/var/www/html/
docker cp mes.php web:/var/www/html/
