# Los comandos utilizados para llevar a cabo la instalación de una pila LAMP son los siguientes:

Una vez creada nuestra instancia a mano accedemos a ella mediante SSH y a partir de este momento haremos lo siguiente.

## Para comprobar que los paquetes de software están actualizados sin pedir confirmación lanzamos el siguiente comando:

sudo dnf update -y

## Instalamos las últimas versiones de Apache y los paquetes de Amazon Linux 2023:

sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel

## Para instalar los paquetes de software de MariaDB escribimos lo siguiente:

sudo dnf install mariadb105-server

## Lo siguiente es iniciar el servidor Apache, con el siguiente comando hacemos que se inicie en cada arranque y con el tercero comprobamos que está activo:

sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl is-enabled httpd

## El siguiente paso es entrar en la ruta donde se guardan los ficheros de Apache:

cd /var/www/html

ls

## Posteriormente entramos en el editor de texto nano:

sudo nano phpinfo.php

## Una vez dentro copiamos lo siguiente y lo guardamos:

<?php phpinfo(); ?>