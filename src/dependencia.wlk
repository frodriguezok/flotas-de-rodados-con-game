import Trafic.*
import otrosRodados.*
import pedidos.*
class Dependencia {
	var cantidadEmpleados
	const flota = []
	const pedidos =[]
	method cantidadEmpleados(cant){ cantidadEmpleados = cant}
	
	method agregarAFlota(rodado) { flota.add(rodado)}
	
	method quitarDeFLota(rodado) { flota.remove(rodado)}
	method flota(){return flota}
	
	method pesoTotalFlota() { return flota.sum({rod => rod.peso()})}
	
	method estaBienEquipada() { 
		return flota.size()>=3 and flota.all({rod => rod.velocidadMaxima()>=100}	
		)
	}
	
	method capacidadTotalEnColor(color) {
		return flota.filter({rod => rod.color()==color}).sum({rod => rod.capacidad()})	
	}
	
	method colorDelRodadoMasRapido(){
		return flota.max({rod=>rod.velocidadMaxima()}).color()
	}
	
	method capacidadFaltante() { 
		return 0.max(cantidadEmpleados - flota.sum({rod=>rod.capacidad()})) 
	}
	
	method esGrande(){
		return cantidadEmpleados >= 40 and flota.size() >= 5
	}
	
	method registroPedido(pedido){pedidos.add(pedido)}
	method sacarPedido(pedido){pedidos.remove(pedido)}
	
	method totalPasajeros(){return pedidos.sum({ped=> ped.cantidadPasajeros()})}
	
	method pedidosNoSatisfechos(){
		return pedidos.filter({pedido=> not self.puedeSatisfacer(pedido)})
	}
	
	method puedeSatisfacer(pedido){
		return flota.any({rod=>pedido.puedeSatisfacer(rod)})
	}
	
	method colorIncompatible(color){
		return pedidos.all({ped=>ped.coloresIncompatibles().contains(color)})
	}
	method relajarTodos(){pedidos.map({ped=>ped.relajar()})}
	}
