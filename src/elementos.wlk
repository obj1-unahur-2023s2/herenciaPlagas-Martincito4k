import barrio.*
import plagas.*

class Elementos {
	method esBueno()
	
	method recibirAtaque(unaPlaga)
}

class Hogar inherits Elementos {
	var nivelDeMugre
	const confort
	
	method nivelDeMugre(){
		return nivelDeMugre
	}
	
	override method esBueno() {
		return nivelDeMugre <= confort / 2
	}
	override method recibirAtaque(unaPlaga){
		nivelDeMugre += unaPlaga.nivelDeDanio()
		unaPlaga.efectoAtaque()
	}
}

class Huerta inherits Elementos {
	var capacidadDeProduccion
	
	method capacidadDeProduccion(){
		return capacidadDeProduccion
	}

	override method esBueno(){
		return capacidadDeProduccion > nivelDeProduccion.nivel()
	}
	
	override method recibirAtaque(unaPlaga){
		if (unaPlaga.transmitenEnfermedades()){
			capacidadDeProduccion -= (0.1 * unaPlaga.nivelDeDanio() + 10)
		}else{
			capacidadDeProduccion -= 0.1 * unaPlaga.nivelDeDanio()
		}
		unaPlaga.efectoAtaque()
	}
}

object nivelDeProduccion {
	var property nivel
	
	method asignarNivel(unNivel){
		nivel = unNivel
	}
}

class Mascota inherits Elementos {
	var nivelDeSalud
	
	method nivelDeSalud(){
		return nivelDeSalud
	}
	
	override method esBueno(){
		return nivelDeSalud > 250
	}

	override method recibirAtaque(unaPlaga){
		if (unaPlaga.transmitenEnfermedades()){
			nivelDeSalud = 0.max(nivelDeSalud - unaPlaga.nivelDeDanio())
		}
		unaPlaga.efectoAtaque()
	}
}