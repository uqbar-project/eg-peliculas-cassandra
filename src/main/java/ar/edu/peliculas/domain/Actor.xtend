package ar.edu.peliculas.domain

import java.util.UUID
import org.uqbar.commons.utils.Observable

@Observable
class Actor {
	
	@Property UUID id
	@Property String nombre
	
	new() {
		
	}
	
	new(UUID myId, String myNombre) {
		id = myId
		nombre = myNombre
	}
	
}