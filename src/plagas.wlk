class Plagas {
	var poblacion
	
	method nivelDeDanio()
	
	method transmitenEnfermedades(){
		return poblacion >=10
	}
	
	method efectoAtaque(){
		poblacion += (poblacion * 0.10)
	}
	
	method poblacion(){
		return poblacion
	}
}

class Cucarachas inherits Plagas {
	var pesoPromedio
	
	override method nivelDeDanio(){
		return poblacion / 2
	}
	
	override method transmitenEnfermedades(){
		return super() and pesoPromedio >= 10
	}
	
	override method efectoAtaque(){
		super()
		pesoPromedio += 2
	}
	method pesoPromedio(){
		return pesoPromedio
	}
}

class Pulgas inherits Plagas {
	override method nivelDeDanio(){
		return poblacion * 2
	}
}

class Garrapatas inherits Pulgas {
	override method efectoAtaque(){
		poblacion += (poblacion * 0.20)
	}
}

class Mosquitos inherits Plagas {
	override method nivelDeDanio(){
		return poblacion
	}

	override method transmitenEnfermedades(){
		return super() and poblacion % 3 == 0
	}
}