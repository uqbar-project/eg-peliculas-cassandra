package ar.edu.peliculas.domain

import java.io.Serializable
import java.util.ArrayList
import java.util.List
import java.util.UUID
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Pelicula implements Serializable {

	UUID id
	String titulo
	String sinopsis
	List<Actor> actores

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