class CuentaCorriente {
	var property saldo = 0
	
	method depositar(monto) {
		saldo += monto
	}
	
	method extraer(monto) {
		saldo -= monto
	}
}

class PersonaConCuenta {
	const miCuenta = new CuentaCorriente()
	
	method cobrar(monto) {
		miCuenta.depositar(monto)
	}
	
	method gastar(monto) {
		miCuenta.extraer(monto)
	}
	
	method ahorros() = miCuenta.saldo()
}

object colchon {
	var property dinero = 0
	
	method guardar(monto) {
		dinero += monto
	}
}

object pepe inherits PersonaConCuenta {
	const cajaFuerte = colchon
	
	override method cobrar(monto) {
		cajaFuerte.guardar(monto)
	}
	
	override method ahorros() = miCuenta.saldo() + cajaFuerte.dinero()
} //en homenaje a Rebeca Cherep de Guber 

//https://es.wikipedia.org/wiki/Rebeca_Guber
object rebeca inherits PersonaConCuenta {
	method salirAComer() {
		self.gastar(500)
	}
}

object ada inherits PersonaConCuenta (
	miCuenta = new CuentaCorriente(saldo = 3000)
) {
	method salirAComer() {
		self.gastar(500)
	}
}

object empresa {
	var property empleados = #{}
	
	method masRico() {
		
	}
}