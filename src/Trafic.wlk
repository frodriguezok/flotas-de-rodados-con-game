object trafic {
	var interior
	var motor
	
	method elegirInterior(int){
		interior = int
	}
	
	method elegirMotor(mot){
		motor = mot
	}
	
	method capacidad(){
		return interior.capacidad()
	}
	
	method velocidadMaxima(){
		return motor.velocidadMaxima()
	}
	
	method color(){
		return "blanco"
	}
	
	method peso(){
		return 4000 + interior.peso() + motor.peso()
	}
	
}

object comodo {
	method capacidad(){return 5}
	method peso(){return 700}
}
object popular{
	method capacidad(){return 12}
	method peso(){return 1000}
}

object pulenta {
	method peso(){return 800}
	method velocidadMaxima(){return 130}
}

object bataton {
	method peso(){return 500}
	method velocidadMaxima(){return 80}
}
