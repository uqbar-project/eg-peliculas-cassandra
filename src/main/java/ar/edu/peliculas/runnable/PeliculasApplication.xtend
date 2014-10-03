package ar.edu.peliculas.runnable

import ar.edu.peliculas.appModel.VerEstrenosAppModel
import ar.edu.peliculas.ui.VerEstrenosWindow
import org.uqbar.arena.Application
import org.uqbar.arena.windows.Window

class PeliculasApplication extends Application {
	
	static def void main(String[] args) { 
		new PeliculasApplication().start
	}

	override protected Window<?> createMainWindow() {
		return new VerEstrenosWindow(this, new VerEstrenosAppModel)
	}
	
}