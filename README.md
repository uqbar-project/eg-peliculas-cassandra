# Estrenos de Películas - Proyecto Xtend con Cassandra

[![Build Status](https://travis-ci.org/uqbar-project/eg-peliculas-cassandra.svg?branch=master)](https://travis-ci.org/uqbar-project/eg-peliculas-cassandra)

## Objetivo
Permite mostrar los estrenos de películas a partir de una fecha determinada. 

## Modelo
Cada película conoce los actores que participaron en ella.

## Links

* [Explicación general del diseño en Cassandra y de la arquitectura de la aplicación.](https://docs.google.com/document/d/1BgEonT2emC0gLoujYAfzJaB2nmphyJc78H8rm2nrZg4/edit?usp=sharing)

## Instalación

* Tenés que instalar localmente [Cassandra](http://cassandra.apache.org/)
* Verificá que esté levantado el server con

```bash
nodetool status
```

(en general `nodetool` te permitirá levantar, bajar el server y hacer todo tipo de monitoreo)

* Correr los queries que están en la carpeta [cassandra-scripts](cassandra-scripts), donde se crea el keyspace y las columns families. Para eso tenés que levantar el shell de Cassandra Query Language, o `cqlsh`

```bash
cqlsh -f pelis_01_definicion_modelo.cql 
cqlsh -f pelis_10_fixture_peliculas.cql 
cqlsh -f pelis_11_fixture_actores.cql 
cqlsh -f pelis_12_fixture_peliculas_actores.cql 
cqlsh -f pelis_13_fixture_actores_peliculas.cql 
```

* Este video muestra cómo se trabaja desde el DevCenter

![video](video/demo.gif)

* Una vez completada la carga de películas, podés levantar la aplicación que está basado en
 * Arena 3.6.3
 * Xtend 2.20.0, con la dependencia definida manualmente
 * con el driver 3.8.0 de Cassandra para Java - te dejamos un [link a la documentación](http://docs.datastax.com/en/developer/java-driver/), que requiere la versión Guava 16 o posterior, por eso las dependencias con Xtend están definidas manualmente

![video](video/demoApp.gif)

(las fechas de estreno posibles están explicadas en el panel de mensajes de la aplicación)

