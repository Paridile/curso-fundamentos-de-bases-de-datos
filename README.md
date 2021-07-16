
</br>

# Curso de Fundamentos de Bases de Datos 🧠

Este repositorio fue hecho como parte del [Curso de Fundamentos de Bases de Datos](https://platzi.com/clases/bd "Curso de Fundamentos de Bases de Datos") de platzi por **Jos&eacute; Pablo R&iacute;os D&iacute;az de Le&oacute;n**.

</br>

### Objetivo

El objetivo de tomar este curso es aprender de manera general acerca de las bases de datos, desde modelarlas y normalizarlas, hasta manipular la informaci&oacute;n almacenada para hacer modificaciones o consultas de todo tipo. De igual manera se exploran diferentes tipos de bases de datos y se da una explicaci&oacute;n de distintas disciplinas en los que este tipo de herramientas tienen relevancia sobre todo en tiempos recientes en los que ha tenido un gran auge.

</br>

------------

</br>

## Contenido 🧾
Algunos de los temas estudiados en este curso fueron:

</br>

>* ***Bases de datos relacionales***
>   * Entidades y atributos
>   * Relaciones
>   * Diagramas
> <p></p>
> 
>* ***RDBMS (MySQL)***
>   * ¿Qu&eacute; es RDBMS?
>   * Clientes gr&aacute;ficos
>   * Servicios administrados
> <p></p>
>
>* ***SQL***
>   * DDL
>   * DML
>   * Estandarizaci&oacute;n de SQL
> <p> </p>
>
> * ***Consultas a una base de datos***
>    * Queries
>    * Sentencias
>    * Consultas
> <p> </p>
>
> * ***Introducci&oacute;n a la bases de datos NO relacionales***
>    * Tipo de bases de datos no relacionales
>    * Servicios administrados
>    * Servicios administrados
> <p> </p>
>
> * ***Manejo de modelos de datos en bases de datos no relacionales***
>    * Top level
>    * Colecciones
>    * firestore
> <p> </p>
>
> * ***Bases de datos en la vida real***
>    * Business intelligence
>    * Machine learning
>    * Data science
> <p> </p>
>

</br>
</br>

----

</br>

## Acerca del curso 📓

A lo largo del curso se trabaja un proyecto, el cu&aacute;l es un blog en el que se contemplan `usuarios, posts, etiquetas,comentarios y categorias`. A partir de esto se hizo un an&aacute;lisis para modelar una base de datos relacional utilizando **MySQL** en la que se realizaron consultas para aprender el funcionamiento de los queries y como se puede extraer informaci&oacute;n estructurada de la base de datos. Posterior a esto se realiz&oacute; el mismo proyecto pero esta vez en una base de datos no relacional usando **firestore**

</br>

----

</br>

## Proyectos ✔

Adem&aacute;s del proyecto del blog anteriormente mencionado, el curso propone realizar un proyecto propio en el cual se pueda pr&aacute;cticar lo visto cada clase, a continuaci&oacute;n explicare m&aacute;s a detalle en que consisti&oacute; mi proyecto.

</br>

### Base de datos uber eats

Las entidades que utilic&eacute; para modelar mi base de datos fueron: `cliente, repartidor, pedido, restaurante,comida, dirección y forma_pago`. Este es mi m&oacute;delo en diagrama entidad relaci&oacute;n

<img src="https://i.ibb.co/0mptvz1/Untitled-Diagram.png" alt="diagrama E-R" title="diagrama E-R"/>

Ya con la estructura del proyecto cree la base de datos utilizando ***MySQL workbench***, adjunto captura de el diagrama f&iacute;sico generado con ingenieria inversa por workbench

<img src="https://i.ibb.co/1nSCQKd/Capture.png" alt="diagrama E-R" title="diagrama E-R"/>

Esta base de datos fue utilizada para realizar pruebas de queries y pr&aacute;cticar todo tipo de consultas, puedes acceder al dump de la base de datos haciendo click [aqu&iacute;](https://github.com/Paridile/curso-fundamentos-de-bases-de-datos/blob/main/eats.sql "Dump base de datos Uber eats") 

El &uacute;ltimo proyecto del curso fue convertir esta base de datos a una no relacional utlizando firestore, puedes consultar el [archivo JSON](https://github.com/Paridile/curso-fundamentos-de-bases-de-datos/blob/main/eats.json "eats.json")  en este repositorio.

</br>

----

</br>

## Archivos del repositorio

</br>


* [ddl.sql](https://github.com/Paridile/curso-fundamentos-de-bases-de-datos/blob/main/ddl.sql "ddl.sql"): Contiene algunos comandos realizados durante la creaci&oacute;n de la base de datos.

* [eats.json](https://github.com/Paridile/curso-fundamentos-de-bases-de-datos/blob/main/eats.json "eats.json"): Base de datos **no relacional** de mi proyecto de uber eats.

* [eats.sql](https://github.com/Paridile/curso-fundamentos-de-bases-de-datos/blob/main/eats.sql "eats.sql"): dump de la base de datos **relacional** de mi proyecto de uber eats.

* [platziblog.json](https://github.com/Paridile/curso-fundamentos-de-bases-de-datos/blob/main/platziblog.json "platziblog.json"):  Base de datos **no relacional** del proyecto del blog realizado durante el curso.

* [platziblog.sql](https://github.com/Paridile/curso-fundamentos-de-bases-de-datos/blob/main/platziblog.sql "platziblog.sql"): Dump de la base de datos **relacional** del proyecto del blog realizado durante el curso.

* [queries.sql](https://github.com/Paridile/curso-fundamentos-de-bases-de-datos/blob/main/queries.sql "queries.sql"): En este archivo puedes las consultas hechas a la base de datos para pr&aacute;cticar las sentencias de SQL.

</br>

----

</br>

## Tecnolog&iacute;as utilizadas 💻

</br>

<div align="center">

<img src="https://logodownload.org/wp-content/uploads/2016/10/mysql-logo.png" width="50px" height="30px" alt="MySQL" title="MySQL"/> MySQL

</br>

<img src="https://dl2.macupdate.com/images/icons256/31829.png?d=14849375570" width="40px" height="40px" alt="MySQL Workbench" title="MySQL Workbench"/> MySQL Workbench

</br>

<img src="https://coronalabs.com/wordpress/wp-content/uploads/2017/04/Firebase_16-logo.png" width="50px" height="30px" alt="Firestore" title="Firestore"/> Firestore

</div>

</br>

-----


