USE IMDB;

/*  
 * No se puede hacer una búsqueda por título
SELECT *
  FROM peliculas
 WHERE titulo = '6';
 */
 
/*CREATE INDEX ON peliculas (titulo);*/
 


SELECT anio_estreno, id, sinopsis, titulo, actores
  FROM peliculas
 WHERE anio_estreno = '2014-02-01';

/* Vemos las pelis de John Cusack(obviamente faltan un monton, pero están 2 */
/*select id, nombre, peliculas
  from actores
 where id = 805a8a59-2e34-438c-8949-8a515a673809; 
 
select * 
  from peliculas
 where id = 7011f15d-37a4-4df6-8cba-9c7095a08e49
 allow filtering;
 
select * 
  from peliculas
 where id = f4d4449e-d0df-4fb3-9d7e-ffc824279835
 allow filtering;*/

/* Nuevo query, vemos las películas de John Cusack */
select * 
  from actores_peliculas
 where actor_id = 805a8a59-2e34-438c-8949-8a515a673809;
 

SELECT anio_estreno, id, sinopsis, titulo, actores
  FROM peliculas
 WHERE id = 805a8a59-2e34-438c-8949-8a515a673809
 ALLOW FILTERING;
 /*anio_estreno = '2014-02-01';*/
 
 
  
  