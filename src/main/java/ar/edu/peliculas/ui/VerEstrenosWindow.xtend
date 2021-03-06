package ar.edu.peliculas.ui

import ar.edu.peliculas.appModel.VerEstrenosAppModel
import ar.edu.peliculas.domain.Actor
import ar.edu.peliculas.domain.Pelicula
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.time.format.DateTimeParseException
import org.apache.commons.lang.StringUtils
import org.uqbar.arena.bindings.PropertyAdapter
import org.uqbar.arena.bindings.ValueTransformer
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.List
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.commons.model.exceptions.UserException

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class VerEstrenosWindow extends SimpleWindow<VerEstrenosAppModel> {

	new(WindowOwner parent, VerEstrenosAppModel model) {
		super(parent, model)
		title = "Estrenos de películas"
		taskDescription = "Seleccione el criterio de búsqueda. Tips: fechas posibles son 01/12/2008, 01/06/2010, 01/12/2010, 01/02/2014, etc."
	}

	override createMainTemplate(Panel mainPanel) {
		super.createMainTemplate(mainPanel)
		this.createResultsGrid(mainPanel)
	}

	override protected addActions(Panel actionsPanel) {
		new Button(actionsPanel) => [
			caption = "Ver estrenos"
			onClick [ | modelObject.buscar ]
			setAsDefault
			disableOnError
		]

		new Button(actionsPanel) => [
			caption = "Limpiar"
			onClick [ | modelObject.limpiar ]
		]
	}

	override protected createFormPanel(Panel mainPanel) {
		var searchFormPanel = new Panel(mainPanel)
		new Label(searchFormPanel).text = "Fecha del estreno:" 
		new TextBox(searchFormPanel) => [
			(value <=> "fechaEstreno").transformer = new LocalDateTransformer
		]	
	}

	def void createResultsGrid(Panel mainPanel) {
		val resultsPanel = new Panel(mainPanel) => [
			layout = new HorizontalLayout
		]
		new Table<Pelicula>(resultsPanel, Pelicula) => [
			numberVisibleRows = 10
			items <=> "peliculas"
			value <=> "peliculaSeleccionada"
			this.describeResultsGrid(it)
		]
		
		val actoresPanel = new Panel(resultsPanel)
		new Label(actoresPanel).text = "Actores"
		new List<Actor>(actoresPanel) => [
			 (items <=> "peliculaSeleccionada.actores").adapter = new PropertyAdapter(Actor, "nombre")
			 width = 520
			 height = 200
		]
	}
	
	def describeResultsGrid(Table<Pelicula> table) {
		new Column<Pelicula>(table) //
			.setTitle("Título")
			.setFixedSize(150)
			.bindContentsToProperty("titulo")

		new Column<Pelicula>(table) //
			.setTitle("Sinopsis")
			.setFixedSize(550)
			.bindContentsToProperty("sinopsis")
	}

}

class LocalDateTransformer implements ValueTransformer<LocalDate, String> {
	String pattern = "dd/MM/yyyy"

	def formatter() {
		DateTimeFormatter.ofPattern(pattern)
	}

	override String modelToView(LocalDate valueFromModel) {
		if (valueFromModel === null) {
			return null
		}
		return valueFromModel.format(formatter)
	}
	
	override getModelType() {
		return LocalDate
	}

	override getViewType() {
		return String
	}

	override LocalDate viewToModel(String valueFromView) {
		try {
			if (StringUtils.isBlank(valueFromView)) 
				null 
			else 
				LocalDate.parse(valueFromView, formatter)
		} catch (DateTimeParseException e) {
			throw new UserException("Debe INGRESAR una fecha en formato: " + this.pattern)
		}
	}

}
