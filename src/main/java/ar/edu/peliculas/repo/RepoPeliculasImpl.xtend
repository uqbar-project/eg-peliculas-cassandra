package ar.edu.peliculas.repo

import ar.edu.peliculas.domain.Actor
import ar.edu.peliculas.domain.Pelicula
import com.datastax.driver.core.Cluster
import com.datastax.driver.core.Session
import com.datastax.driver.core.querybuilder.QueryBuilder
import java.time.LocalDate
import java.time.ZoneId
import java.util.Date
import java.util.List
import java.util.UUID

class RepoPeliculasImpl {

	Session session

	def void init() {
		val cluster = Cluster.builder().addContactPoint("127.0.0.1").build()
		session = cluster.connect("imdb")
		// TODO: Cuando estamos en una app real, hay que hacer cluster.close()
	}

	def List<Pelicula> getPeliculas(LocalDate fechaEstreno) {
		val fechaEstrenoPosta = Date.from(fechaEstreno.atStartOfDay(ZoneId.systemDefault()).toInstant())

		val statement = QueryBuilder
			.select()
			.all()
			.from("imdb", "peliculas")
			.where(QueryBuilder.eq("fecha_estreno", fechaEstrenoPosta))
			.limit(10)
//			.allowFiltering()
       		.enableTracing()

		val rs = session.execute(statement)

		val peliculas = rs.all.map [ fila | 
			new Pelicula => [
				id = fila.getUUID("id")
				titulo = fila.getString("titulo")
				sinopsis = fila.getString("sinopsis")
				// Transformo el mapa de actores en una lista de objetos Actor
				val mapaActores = fila.getMap("actores", typeof(UUID), typeof(String))
				actores = mapaActores.entrySet.map [ entryActor |
		  			new Actor(entryActor.key, entryActor.value)
		  		].toList
			]
		]
		
		peliculas
	}

	/**
	 * Definición del SINGLETON
	 */
	static RepoPeliculasImpl _instance

	static def RepoPeliculasImpl getInstance() {
		if (_instance === null) {
			_instance = new RepoPeliculasImpl
		}
		_instance
	}

	private new() {
		init
	}

	/** Fin Definición del SINGLETON */
	def static void main(String[] args) {
		new RepoPeliculasImpl() => [
			// Fija, usar 01/02/2014
			getPeliculas(LocalDate.of(2014, 2, 1))
		]
	}
}
