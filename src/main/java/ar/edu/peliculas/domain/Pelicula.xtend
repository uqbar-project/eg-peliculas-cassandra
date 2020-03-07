package ar.edu.peliculas.domain

import java.io.Serializable
import java.util.List
import java.util.UUID
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

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
		actores = newArrayList
	}
	
	def void agregarActor(Actor actor) {
		actores.add(actor)
	}
	
	def void eliminarActor(Actor actor) {
		actores.remove(actor)
	}
	
}