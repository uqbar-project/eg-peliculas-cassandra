package ar.edu.peliculas.appModel

import ar.edu.peliculas.domain.Pelicula
import ar.edu.peliculas.home.RepoPeliculasImpl
import java.util.Date
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class VerEstrenosAppModel {
	
	Date fechaEstreno
	List<Pelicula> peliculas
	Pelicula peliculaSeleccionada
	
	// Atributos de manejo interno
	RepoPeliculasImpl repoPeliculas = RepoPeliculasImpl.instance
	
	new() {
		fechaEstreno = new Date(114, 1, 1)
	}
	
	def void buscar() {
		peliculas = repoPeliculas.getPeliculas(fechaEstreno)
	}
	
	def void limpiar() {
		peliculaSeleccionada = null
	}
	
}