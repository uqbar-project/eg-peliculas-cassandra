package ar.edu.peliculas.domain

import java.io.Serializable
import java.util.ArrayList
import java.util.List
import java.util.UUID
import org.uqbar.commons.utils.Observable

@Observable
class Pelicula implements Serializable {

	@Property UUID id
	@Property String titulo
	@Property String sinopsis
	@Property List<Actor> actores

	override toString() {
		titulo
	}	

	new() {
		actores = new ArrayList<Actor>
	}
	
	new(UUID myID) {
		id = myID
	}	
	
	def void agregarActor(Actor actor) {
		actores.add(actor)
	}
	
	def void eliminarActor(Actor actor) {
		actores.remove(actor)
	}
	
}