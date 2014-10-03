package ar.edu.peliculas.appModel

import ar.edu.peliculas.domain.Pelicula
import java.util.Date
import java.util.List
import org.uqbar.commons.utils.Observable
import ar.edu.peliculas.home.RepoPeliculasImpl

@Observable
class VerEstrenosAppModel {
	
	@Property Date fechaEstreno
	@Property List<Pelicula> peliculas
	@Property Pelicula peliculaSeleccionada
	
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