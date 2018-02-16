package ar.edu.peliculas.appModel

import ar.edu.peliculas.domain.Pelicula
import ar.edu.peliculas.repo.RepoPeliculasImpl
import java.time.LocalDate
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class VerEstrenosAppModel {
	
	LocalDate fechaEstreno
	List<Pelicula> peliculas
	Pelicula peliculaSeleccionada
	
	// Atributos de manejo interno
	RepoPeliculasImpl repoPeliculas = RepoPeliculasImpl.instance
	
	new() {
		fechaEstreno = LocalDate.of(2014, 2, 1)
	}
	
	def void buscar() {
		peliculas = repoPeliculas.getPeliculas(fechaEstreno)
	}
	
	def void limpiar() {
		peliculaSeleccionada = null
		peliculas = newArrayList
		fechaEstreno = null
	}
	
}