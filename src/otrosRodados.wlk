import wollok.game.*
class ChevroletCorsa {
	var color
	var property image = "autitorojo.png"
	var position
	const posicion = []
	const posicionx = []
	
	
	method position(x,y){
		position = game.at(x,y)
		posicion.add([x,y])
		posicionx.add(x)
		
	}
	method position(){return position}
	
	method pasoPor(posx,posy){
		return posicion.contains([posx,posy])
	}
	
	method pasoPorFila(numero){return posicionx.contains(numero)}
	
	method recorridoFilas(lista_de_numeros){
	}
	
	method moveteArriba(){
		position = position.up(1)
	}
	method moveteAbajo(){
		position = position.down(1)
	}
	
	method moveteIzquierda(){
		position = position.left(1)
	}
	
	method moveteDerecha(){
		position = position.right(1)
	}
	
	method capacidad(){
		return 4
	}
	
	method velocidadMaxima(){
		return 150
	}
	
	method indicarColor(colorIndicado){
		color = colorIndicado
	}
	
	method color(){return color}
	
	method peso(){return 1300}
	
}

object rojo{
	method image(){return "autitorojo.png"}
}
object azul{
	method image(){return "autitoazul.png"}
}
object verde{
	method image(){return "autitoverde.png"}
}






class RenaultKwid{
	var tanqueAdicional
	
	method tieneTanqueAdicional(siono){
		tanqueAdicional = siono
	}
	
	method capacidad(){
		return if(tanqueAdicional){3}else {4}
	}
	
	method velocidadMaxima(){
		return if(tanqueAdicional){110}else{120}
	}
	
	method color(){
		return "azul"
	}
	
	method peso(){
		return if(tanqueAdicional){1200+150}else{1200}
	}
}

class AutosEspeciales {
	var capacidad
	var velocidadMaxima
	var peso
	var color
	
	method indicarCapacidad(cap){capacidad = cap}
	method capacidad(){return capacidad}
	
	method indicarVelocidad(vel){velocidadMaxima = vel}
	method velocidadMaxima(){return velocidadMaxima}
	
	method indicarPeso(pes){peso = pes}
	method peso(){return peso}
	
	method indicarColor(col){color = col}
	method color(){return color}
}
