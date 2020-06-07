import dependencia.*
import otrosRodados.*
import Trafic.*

class Pedidos {
	var recorrido
	var tiempo
	var pasajeros
	
	const coloresIncompatibles = []
	var velocidad
	method distancia(kms){recorrido = kms}
	method tiempoMaximo(tiemp){tiempo = tiemp}
	method cantidadPasajeros(cant){pasajeros = cant}
	method cantidadPasajeros(){return pasajeros}
	method coloresInc(colores){coloresIncompatibles.add(colores)}
	method velocidadRequerida(){ velocidad =recorrido/tiempo}
	method satisfacerPedido(auto){return auto.velocidadMaxima() - velocidad >=10
		and auto.capacidad() >= pasajeros and not coloresIncompatibles.contains(auto.color())
	}
	method coloresIncompatibles(){return coloresIncompatibles}
	
	method acelerar(){tiempo -= 1}
	method relajar(){tiempo += 1}
	

}


