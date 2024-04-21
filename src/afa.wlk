import jugadores.*
import estadios.*

object afa {
	var plataAcumulada = 0
	var jugadorActual = messi
	var estadioActual = bombonera
	
	method jugadorActual() = jugadorActual//getter
	method jugadorActual(nuevo){jugadorActual = nuevo}//setter
	method estadioActual() = estadioActual
	method estadioActual(nuevo){estadioActual = nuevo}
	
	method precioDeEntrada(){return 10000*inflacion.inflacionActual()}
	
	method cantidadDeVentas(){
		return estadioActual.capacidad()*jugadorActual.popularidad()/100
	}
	
	method totalRecaudado(){return self.precioDeEntrada()*self.cantidadDeVentas()}
	
	method valorEvento() = 10000000
	
	method costoDelEvento() = self.valorEvento()+ jugadorActual.viaticos()+ estadioActual.alquilerDeEstadio()
	
	method gananciaNeta(){return 0.max(self.totalRecaudado() - self.costoDelEvento())} 
	
	method jugarPartido(){plataAcumulada += self.gananciaNeta()}
	
}

object inflacion{
	
	method inflacionActual() = 1.5
}
