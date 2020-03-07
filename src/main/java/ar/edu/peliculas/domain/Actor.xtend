package ar.edu.peliculas.domain

import java.util.UUID
import org.eclipse.xtend.lib.annotations.Data
import org.uqbar.commons.model.annotations.Observable

@Observable
@Data
class Actor {
	
	UUID id
	String nombre
	
}