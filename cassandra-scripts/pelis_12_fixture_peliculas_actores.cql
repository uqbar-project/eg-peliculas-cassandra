USE IMDB;
 
/* Closed circuit */
update peliculas
          set actores = {
         	77f92efc-f48d-4f01-80a2-25c12ec9915c : 'Eric Bana',
          	272505d8-0e33-4837-90a9-cd79ad79396f : 'Rebecca Hall'
          }
          where fecha_estreno = '2014-02-01' AND id = 08cbbce4-4341-4f26-888f-5a842af819f8;

 
/* Enders Game */
update peliculas
          set actores = {
         	4239a7c1-4427-4321-b588-de50590994b2: 'Asa Butterfield',
			c51be3f9-4963-4675-91f2-f314d0287e17: 'Harrison Ford',
			eee25de1-2939-4ca7-9598-eb30b3077b97: 'Hailee Steinfeld',
			d596f571-51ff-4282-8594-180a2bfdf2b4: 'Ben Kingsley'
          }
          where fecha_estreno = '2014-02-01' AND id = 0a1ec3aa-9333-458f-b859-4cf149c71bc8;

/* Runner runner */
update peliculas
          set actores = {
         	cb5ac670-02ff-4d5e-8702-037a004fd1cf: 'Ben Affleck',
			e3838466-ed81-41f7-851c-f93c7430e9c9: 'Justin Timberlake',
			da049843-e062-49d9-b196-d6e83600796e: 'Gemma Arterton'			
          }
          where fecha_estreno = '2014-02-01' AND id = 1cf766e7-e054-46ac-97e0-0b987c0134a4;

/* Gravity */
update peliculas
          set actores = {
         	a88fafb2-51d5-459b-bd92-7c23eed7d168: 'Sandra Bullock',
         	e96ff2f1-193a-4c48-83f3-f91c9824aa3a: 'George Clooney',
			62236f97-5a74-4915-9584-c8a6ad4e11ec: 'Phaldut Sharma'			
          }
          where fecha_estreno = '2014-02-01' AND id = 3ce7ac33-a452-49c0-9832-2944fef51c35;

/* Gambit, el plan perfecto */
update peliculas
          set actores = {
			cbd384ef-4712-4a9c-9147-5da8c4500330: 'Colin Firth',
			9a3041a0-edf0-49bf-91b0-80e85fc150b5: 'Cameron Diaz',
			f14745a5-2d03-4fcd-8551-844610ea8381: 'Alan Rickman'
          }
          where fecha_estreno = '2014-02-01' AND id = 438c7131-7550-4188-ad8d-47ac9a4c280e;

/* Redemption */
update peliculas
          set actores = {
			5d14fd5d-fd5c-45ff-b701-b4fcf259da42: 'Jason Statham',
			11ffffbe-94b6-40b5-a205-0484bf8d6a2e: 'Agata Buzek',
			68e99fab-7beb-42ea-b9ae-9b1803e5c9a3: 'Benedict Wong'
          }
          where fecha_estreno = '2014-02-01' AND id = 66c3facf-4ba7-477e-95dd-731ff5b08c55;

/* The frozen ground */
update peliculas
          set actores = {
			fb6c681d-968e-42d4-8e98-4af33fc39af9: 'Nicolas Cage',
			805a8a59-2e34-438c-8949-8a515a673809: 'John Cusack',
			77fee274-53ff-4d0e-9bde-6e9ceedb71d5: 'Vanessa Hudgens',
			ec3eedc8-ea44-457f-897f-18db051d724a: 'Curtis Jackson',
			89221f82-0e74-4f4a-9c75-e2890fc18038: 'Radha Mitchell',
			b338bcd3-a39b-4ec7-9829-36ec1f5e1098: 'Dean Norris',
			3c5ff2ad-b3e6-4db4-8a55-789610b95844: 'Kevin Dunn'
          }
          where fecha_estreno = '2014-02-01' AND id = 7011f15d-37a4-4df6-8cba-9c7095a08e49;

/* Jackass: Bad Grandpa */
update peliculas
          set actores = {
			e6ae7934-fd71-445c-ab80-866ffb2b4554: 'Johnny Knoxville',
			5d64a0f4-3c62-4bf6-8488-e401e9d356f5: 'Jackson Nicoll'
          }
          where fecha_estreno = '2014-02-01' AND id = 72c42922-6620-4b85-a2fc-e0f13d088a87;

/* As i lay dying */
update peliculas
          set actores = {
				b8e0b24c-667d-43e5-b37b-20121eb21ee6: 'James Franco',
				ce06cf4b-c72a-4d0e-90a9-581b939f5d07: 'Logan Marshall-Green'
          }
          where fecha_estreno = '2014-02-01' AND id = 83511038-15d0-4cc4-90bc-94b6ed0f2b8d;
           
/* The haunting of Helena */
update peliculas
          set actores = {
				56c38a6b-2904-4d69-900b-403ee7b8eb46: 'Harriet MacMasters-Green',
				5b24aaa9-5749-49e9-8e33-bfd201e813f9: 'Sabrina Jolie Perez',
				c0c2efd3-a805-4460-a9e4-2b1af6e2722b: 'Jarreth J. Merz',
				3c74dbcf-bff8-4922-a992-7ebc4eb54cb9: 'Matt Patresi'
          }
          where fecha_estreno = '2014-02-01' AND id = f2d9ddec-3e43-4c29-9b48-da604c26eb08;

/* The Butler */
update peliculas
          set actores = {
				199e7218-d457-4fbd-828d-22716527c7ff: 'Cuba Gooding Jr.',
				4fbc55ac-7490-4191-b1d1-f70a3fb5d91a: 'David Oyelowo',
				14a1918f-b5e7-440b-8129-9f0d0700357b: 'Forest Whitaker',
				199e0a18-984d-4033-b673-9988e9b52b3c: 'Oprah Winfrey',
				805a8a59-2e34-438c-8949-8a515a673809: 'John Cusack'
          }
          where fecha_estreno = '2014-02-01' AND id = f4d4449e-d0df-4fb3-9d7e-ffc824279835;
           

/* Actualizamos actores */
/* Este es un fix dado que para Cassandra 2.1 se puede crear un indice sobre una colección
 
CREATE INDEX ON peliculas (actores);

SELECT titulo, actores
  FROM peliculas
 WHERE actores CONTAINS 'John Cusack';

Segundo intento:
* * CREATE TABLE IF NOT EXISTS "actores" (
	id uuid primary key,
	nombre text,
	peliculas list<uuid>
);
 
Así podemos asociar el id único de la película, pero eso puede
 * demorar la búsqueda posterior de la peli 
 * ya que hay que buscar entre todos los clusters, 
 * 
 
Ej: Vemos las pelis de John Cusack(obviamente faltan un monton, pero están 2
*  
select id, nombre, peliculas
  from actores
 where id = 805a8a59-2e34-438c-8949-8a515a673809; 
 
select * 
  from peliculas
 where id = 7011f15d-37a4-4df6-8cba-9c7095a08e49
 allow filtering;  // sin la clausula allow filtering no permite hacer la consulta
 * 
 
select * 
  from peliculas
 where id = f4d4449e-d0df-4fb3-9d7e-ffc824279835
 allow filtering;
 
 
 * necesitamos agregar la particion, como segunda alternativa
 * entonces vamos por la segunda opción: un one-to-many generando una nueva entidad
 * actores-peliculas
 * 
 */
 /* reemplazar esto con los nuevos datos
update actores
    set peliculas = [08cbbce4-4341-4f26-888f-5a842af819f8]            
	where id = 77f92efc-f48d-4f01-80a2-25c12ec9915c;
	
update actores
    set peliculas = [08cbbce4-4341-4f26-888f-5a842af819f8]            
	where id = 272505d8-0e33-4837-90a9-cd79ad79396f;

	
update actores
    set peliculas = [0a1ec3aa-9333-458f-b859-4cf149c71bc8]            
	where id = 4239a7c1-4427-4321-b588-de50590994b2;
 
 
update actores
    set peliculas = [0a1ec3aa-9333-458f-b859-4cf149c71bc8]            
	where id = c51be3f9-4963-4675-91f2-f314d0287e17;

update actores
    set peliculas = [0a1ec3aa-9333-458f-b859-4cf149c71bc8]            
	where id = eee25de1-2939-4ca7-9598-eb30b3077b97;

update actores
    set peliculas = [0a1ec3aa-9333-458f-b859-4cf149c71bc8]            
	where id = d596f571-51ff-4282-8594-180a2bfdf2b4;

update actores
    set peliculas = [1cf766e7-e054-46ac-97e0-0b987c0134a4]            
	where id = cb5ac670-02ff-4d5e-8702-037a004fd1cf;

update actores
    set peliculas = [1cf766e7-e054-46ac-97e0-0b987c0134a4]            
	where id = e3838466-ed81-41f7-851c-f93c7430e9c9;

update actores
    set peliculas = [1cf766e7-e054-46ac-97e0-0b987c0134a4]            
	where id = da049843-e062-49d9-b196-d6e83600796e;

update actores
    set peliculas = [3ce7ac33-a452-49c0-9832-2944fef51c35]            
	where id = a88fafb2-51d5-459b-bd92-7c23eed7d168;

update actores
    set peliculas = [3ce7ac33-a452-49c0-9832-2944fef51c35]            
	where id = e96ff2f1-193a-4c48-83f3-f91c9824aa3a;

update actores
    set peliculas = [3ce7ac33-a452-49c0-9832-2944fef51c35]            
	where id = 62236f97-5a74-4915-9584-c8a6ad4e11ec;



update actores
    set peliculas = [438c7131-7550-4188-ad8d-47ac9a4c280e]            
	where id = cbd384ef-4712-4a9c-9147-5da8c4500330;

update actores
    set peliculas = [438c7131-7550-4188-ad8d-47ac9a4c280e]            
	where id = 9a3041a0-edf0-49bf-91b0-80e85fc150b5;

update actores
    set peliculas = [438c7131-7550-4188-ad8d-47ac9a4c280e]            
	where id = f14745a5-2d03-4fcd-8551-844610ea8381;



update actores
    set peliculas = [66c3facf-4ba7-477e-95dd-731ff5b08c55]
	where id = 5d14fd5d-fd5c-45ff-b701-b4fcf259da42;

update actores
    set peliculas = [66c3facf-4ba7-477e-95dd-731ff5b08c55]            
	where id = 11ffffbe-94b6-40b5-a205-0484bf8d6a2e;

update actores
    set peliculas = [66c3facf-4ba7-477e-95dd-731ff5b08c55]            
	where id = 68e99fab-7beb-42ea-b9ae-9b1803e5c9a3;


update actores
    set peliculas = [7011f15d-37a4-4df6-8cba-9c7095a08e49]            
	where id = fb6c681d-968e-42d4-8e98-4af33fc39af9;
	
update actores
    set peliculas = [7011f15d-37a4-4df6-8cba-9c7095a08e49, f4d4449e-d0df-4fb3-9d7e-ffc824279835]            
	where id = 805a8a59-2e34-438c-8949-8a515a673809;

update actores
    set peliculas = [7011f15d-37a4-4df6-8cba-9c7095a08e49]            
	where id = 77fee274-53ff-4d0e-9bde-6e9ceedb71d5;

update actores
    set peliculas = [7011f15d-37a4-4df6-8cba-9c7095a08e49]            
	where id = ec3eedc8-ea44-457f-897f-18db051d724a;

update actores
    set peliculas = [7011f15d-37a4-4df6-8cba-9c7095a08e49]            
	where id = 89221f82-0e74-4f4a-9c75-e2890fc18038;

update actores
    set peliculas = [7011f15d-37a4-4df6-8cba-9c7095a08e49]            
	where id = b338bcd3-a39b-4ec7-9829-36ec1f5e1098;

update actores
    set peliculas = [7011f15d-37a4-4df6-8cba-9c7095a08e49]            
	where id = 3c5ff2ad-b3e6-4db4-8a55-789610b95844;



update actores
    set peliculas = [72c42922-6620-4b85-a2fc-e0f13d088a87]            
	where id = e6ae7934-fd71-445c-ab80-866ffb2b4554;

update actores
    set peliculas = [72c42922-6620-4b85-a2fc-e0f13d088a87]            
	where id = 5d64a0f4-3c62-4bf6-8488-e401e9d356f5;




update actores
    set peliculas = [83511038-15d0-4cc4-90bc-94b6ed0f2b8d]            
	where id = b8e0b24c-667d-43e5-b37b-20121eb21ee6;

update actores
    set peliculas = [83511038-15d0-4cc4-90bc-94b6ed0f2b8d]            
	where id = ce06cf4b-c72a-4d0e-90a9-581b939f5d07;
           
           

update actores
    set peliculas = [f2d9ddec-3e43-4c29-9b48-da604c26eb08]            
	where id = 56c38a6b-2904-4d69-900b-403ee7b8eb46;

update actores
    set peliculas = [f2d9ddec-3e43-4c29-9b48-da604c26eb08]            
	where id = 5b24aaa9-5749-49e9-8e33-bfd201e813f9;

update actores
    set peliculas = [f2d9ddec-3e43-4c29-9b48-da604c26eb08]            
	where id = c0c2efd3-a805-4460-a9e4-2b1af6e2722b;

update actores
    set peliculas = [f2d9ddec-3e43-4c29-9b48-da604c26eb08]            
	where id = 3c74dbcf-bff8-4922-a992-7ebc4eb54cb9;


update actores
    set peliculas = [f4d4449e-d0df-4fb3-9d7e-ffc824279835]            
	where id = 199e7218-d457-4fbd-828d-22716527c7ff;

update actores
    set peliculas = [f4d4449e-d0df-4fb3-9d7e-ffc824279835]            
	where id = 4fbc55ac-7490-4191-b1d1-f70a3fb5d91a;

update actores
    set peliculas = [f4d4449e-d0df-4fb3-9d7e-ffc824279835]            
	where id = 14a1918f-b5e7-440b-8129-9f0d0700357b;

update actores
    set peliculas = [f4d4449e-d0df-4fb3-9d7e-ffc824279835]            
	where id = 199e0a18-984d-4033-b673-9988e9b52b3c;

 * 
 */
           