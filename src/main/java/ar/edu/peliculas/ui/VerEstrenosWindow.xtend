package ar.edu.peliculas.ui

import ar.edu.peliculas.appModel.VerEstrenosAppModel
import ar.edu.peliculas.domain.Actor
import ar.edu.peliculas.domain.Pelicula
import org.uqbar.arena.bindings.DateAdapter
import org.uqbar.arena.bindings.PropertyAdapter
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

class VerEstrenosWindow extends SimpleWindow<VerEstrenosAppModel> {

	new(WindowOwner parent, VerEstrenosAppModel model) {
		super(parent, model)
		title = "Estrenos de películas"
		taskDescription = "Seleccione el criterio de búsqueda. Tips: fechas posibles son 01/12/2008, 01/06/2010, 01/12/2010, 01/02/2014, etc."
	}

	override def createMainTemplate(Panel mainPanel) {
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
			bindValueToProperty("fechaEstreno").transformer = new DateAdapter
		]	
	}

	def void createResultsGrid(Panel mainPanel) {
		val resultsPanel = new Panel(mainPanel) => [
			layout = new HorizontalLayout
		]
		new Table<Pelicula>(resultsPanel, Pelicula) => [
			width = 600
			bindItemsToProperty("peliculas")
			bindValueToProperty("peliculaSeleccionada")
			this.describeResultsGrid(it)
		]
		
		val actoresPanel = new Panel(resultsPanel)
		new Label(actoresPanel).text = "Actores"
		new List<Actor>(actoresPanel) => [
			 bindItemsToProperty("peliculaSeleccionada.actores").adapter = new PropertyAdapter(typeof(Actor), "nombre")
			 width = 150
			 height = 180
		]
	}
	
	def describeResultsGrid(Table<Pelicula> table) {
		new Column<Pelicula>(table) //
			.setTitle("Título")
			.setFixedSize(150)
			.bindContentsToProperty("titulo")

		new Column<Pelicula>(table) //
			.setTitle("Sinopsis")
			.setFixedSize(450)
			.bindContentsToProperty("sinopsis")
	}

}
