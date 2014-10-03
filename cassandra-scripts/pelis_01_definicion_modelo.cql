DROP KEYSPACE imdb;

CREATE KEYSPACE IF NOT EXISTS imdb WITH REPLICATION = { 
	'class' : 'SimpleStrategy', 
	'replication_factor' : 1 };

USE imdb;

/* DDL */

/* CF que tiene una estructura en parte estática (título, sinopsis, año del estreno,
 * y parte dinámica (los actores, si bien hay actores más importantes que otros,
 * veremos qué alternativas hay).
 * Podemos guardar
 * 1) los identificadores de los actores para luego ir a buscarlos a la otra column family.
 *    Ventaja: permanece normalizado.
 *    Desventajas: no existe el join en esta tecnología, y para obtener la lista de
 *    actores hay que hacer n consultas.
 * 2) los nombres en un set, o datos desnormalizados, lo que implica que en el caso de uso
 *    donde se actualiza el nombre del actor hay que ver qué hacemos con las películas
 *    en las que participó. La ventaja es que si en la consulta de una película sólo
 *    necesitamos conocer el nombre de los actores, eso lleva una sola consulta.
 *    No obstante, la navegación de un actor a su perfil implica almacenar el identificador
 *    de la column family dentro del campo text.
 *    Además tenemos una limitación:
 *    "Use collections when you want to store or denormalize a small amount of data. 
 *    "Values of items in collections are limited to 64K"
 *    "If you insert more than 64K items into a collection, 
 *          only 64K of them will be queryable, resulting in data loss."
 * 3) Una tercera alternativa podría ser almacenar los nombres de los primeros actores
 *    en un campo de peliculas (aumentar la desnormalizacion) para los casos de uso
 *    que sólo requieran mostrar datos principales de una película (ej: una grilla)
 * 4) cuarta opción: tener un set de tuplas (la versión 2.1 de CQL viene con este feature)
 * 5) Trabajar con un mapa permite tener un int : text con el identificador de los participantes
 *    y el nombre.
 * 
 */
CREATE TABLE IF NOT EXISTS "peliculas" (
	anio_estreno timestamp,
	id uuid,
	titulo text,
	sinopsis text,
	actores map<uuid, text>,
	primary key (anio_estreno, id)	
	);
	 	
/* CF actores */
/* También tienen una estructura semi-estática, con la lista de peliculas en las
 * que participaron. * 
 **/
CREATE TABLE IF NOT EXISTS "actores" (
	id uuid primary key,
	nombre text
	/* peliculas list<uuid> */
	/* 2.1 peliculas list<tuple<timestamp, uuid, text>> */
);

CREATE TABLE IF NOT EXISTS "actores_peliculas" (
	actor_id uuid,
	pelicula_id uuid,
	anio_estreno timestamp,
	titulo text,
	primary key (actor_id, pelicula_id)
);
