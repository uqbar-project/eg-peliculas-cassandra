package ar.edu.peliculas.home

import ar.edu.peliculas.domain.Actor
import ar.edu.peliculas.domain.Pelicula
import com.netflix.astyanax.AstyanaxContext
import com.netflix.astyanax.Keyspace
import com.netflix.astyanax.connectionpool.NodeDiscoveryType
import com.netflix.astyanax.connectionpool.impl.ConnectionPoolConfigurationImpl
import com.netflix.astyanax.connectionpool.impl.CountingConnectionPoolMonitor
import com.netflix.astyanax.impl.AstyanaxConfigurationImpl
import com.netflix.astyanax.model.ColumnFamily
import com.netflix.astyanax.serializers.MapSerializer
import com.netflix.astyanax.serializers.StringSerializer
import com.netflix.astyanax.thrift.ThriftFamilyFactory
import java.text.SimpleDateFormat
import java.util.Date
import java.util.HashMap
import java.util.List
import java.util.UUID
import org.apache.cassandra.db.marshal.UTF8Type
import org.apache.cassandra.db.marshal.UUIDType

class RepoPeliculasImpl {

	Keyspace keyspace

	def void init() {
		val context = new AstyanaxContext.Builder().forCluster("local").forKeyspace("imdb").withAstyanaxConfiguration(
			new AstyanaxConfigurationImpl() => [
				discoveryType = NodeDiscoveryType.RING_DESCRIBE
				cqlVersion = "3.0.0"
				targetCassandraVersion = "1.2"
			]
		).withConnectionPoolConfiguration(
			new ConnectionPoolConfigurationImpl("MyConnectionPool") => [
				port = 9160
				maxConnsPerHost = 1
				seeds = "127.0.0.1:9160"
			]
		).withConnectionPoolMonitor(new CountingConnectionPoolMonitor).buildKeyspace(ThriftFamilyFactory.instance)
		context.start
		keyspace = context.client
	}

	def List<Pelicula> getPeliculas(Date fechaEstreno) {
		val CQL3_CF = ColumnFamily.newColumnFamily("Cql3CF", StringSerializer.get, StringSerializer.get)
		val fechaEstrenoString = new SimpleDateFormat("yyyy-MM-dd").format(fechaEstreno)
		val cqlResult = keyspace.prepareQuery(CQL3_CF).withCql(
			"SELECT fecha_estreno, id, sinopsis, titulo, actores  FROM peliculas WHERE fecha_estreno = '" + fechaEstrenoString + "';").execute

		cqlResult.result.rows.map [ 
			val filaPelicula = it.columns
			new Pelicula() => [
				id = filaPelicula.getUUIDValue("id", null)
				titulo = filaPelicula.getStringValue("titulo", null)
				sinopsis = filaPelicula.getStringValue("sinopsis", null)
				val mapaActores = filaPelicula.getValue("actores", new MapSerializer<UUID, String>(UUIDType.instance, UTF8Type.instance), new HashMap<UUID ,String>)
				actores = mapaActores.entrySet.map [ entryActor |
					new Actor(entryActor.key, entryActor.value)
				].toList
			]
		].toList
	}

	/**
	 * Definición del SINGLETON
	 */
	static RepoPeliculasImpl _instance
	
	static def RepoPeliculasImpl getInstance() {
		if (_instance == null) {
			_instance = new RepoPeliculasImpl
		}
		_instance
	}

	private new() {
		init
	}	
	
	/** Fin Definición del SINGLETON */
	
	def static void main(String[] args) {
		new RepoPeliculasImpl() => [
			// Fija, usar 01/02/2014
			getPeliculas(new Date(114, 1, 1))
		]
	}
}
