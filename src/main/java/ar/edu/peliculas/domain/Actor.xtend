package ar.edu.peliculas.domain

import java.util.UUID
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class Actor {
	
	UUID id
	String nombre
	
	new(UUID myId, String myNombre) {
		id = myId
		nombre = myNombre
	}
	
}