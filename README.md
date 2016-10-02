# Estrenos de Películas - Proyecto Xtend con Cassandra

## Objetivo
Permite mostrar los estrenos de películas a partir de una fecha determinada. 

## Modelo
Cada película conoce los actores que participaron en ella.

## Links

* [Explicación general del diseño en Cassandra y de la arquitectura de la aplicación.](https://docs.google.com/document/d/1BgEonT2emC0gLoujYAfzJaB2nmphyJc78H8rm2nrZg4/edit?usp=sharing)

## Instalación

* Tenés que instalar localmente [Cassandra](http://cassandra.apache.org/)
* También el [DataStax DevCenter](http://www.datastax.com/products/datastax-devcenter-and-development-tools), la herramienta para correr queries en CQL (Cassandra Query Language). **Importante:** no instales el OpsCenter porque es la versión anterior del DevCenter que quedó deprecado.
* Correr los queries que están en la carpeta [cassandra-scripts](cassandra-scripts), donde se crea el keyspace y las columns families.
* Este video muestra cómo se trabaja desde el DevCenter

![video](video/demo.gif)

* Una vez completada la carga de películas, podés levantar la aplicación que está basado en
 * Arena 3.6.1
 * Xtend 2.10, con la dependencia definida manualmente
 * con el driver 3.1.0 de Cassandra para Java (te dejamos un [link a la documentación](http://docs.datastax.com/en/developer/java-driver//3.1/), que requiere la versión Guava 16 o posterior, por eso las dependencias con Xtend están definidas manualmente

![video](video/demoApp.gif)

Para ayudarte a buscar fechas de estreno tenés un

