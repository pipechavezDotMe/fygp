A. Utilizamos el ORM de Django (Un Framework del lenguaje Python) para agilizar la creación y modificación de la base de datos Mysql mediante el uso de MVC (Modelo vista controlador). Una vez creada la base de datos, Django nos facilita un administrador para la inserción de nuevos datos.

  This is the "Elonlegan Fork  for https://www.github.com/elonlegan/marzo-entrega documentation", a django 1.8.2 project very easy to install in production.

  1. Install Python, pip, django, pillow, mysql and mysql python connector.
  2. Git clone this project.
  3. Mysql create database character set utf8.
  4. cp settings-prod.py and mv to settings.py and configure database.
  5. mkdir media & media chmod 777.
  6. makemigrations app & migrate.
  7. Enjoy! You are free to use it and please share.

B. Implementamos el uso del lenguaje PHP para mediante un archivo index.php generar las consultas a la base de datos, incluimos un archivo conexion.php para realizar la conexión.

C. Integramos nuestro archivo index.html previamente generado en el Frontend para completar el sistema.

D. Opcional: Implementamos un Framework PHP para optimizar la seguridad en el servidor. (Symphony, CakePHP, Laravel, Etc...)
