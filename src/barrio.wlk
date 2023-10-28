import elementos.*

class Barrios {
	const elementos = []
	
	method esBarrioCopado(){
		return self.cantidadDeElementosBuenos() >= self.cantidadDeElementosNoBuenos()
	}
	
	method cantidadDeElementosBuenos(){
		return elementos.count({elemento => elemento.esBueno()})
	}
	
	method cantidadDeElementosNoBuenos(){
		return elementos.count({elemento => not elemento.esBueno()})
	}

	method agregarElemento(unElemento){
		elementos.add(unElemento)
	}
	
	method removerElemento(unElemento){
		elementos.remove(unElemento)
	}
}