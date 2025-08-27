//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  
  method sueldo(newSueldo) {
      sueldo = newSueldo
  }
  method sueldoACobrar() = sueldo
}

object baigorria {
  var sueldo = 0

  method vender(cantEmpanadas) {
    sueldo = sueldo + cantEmpanadas * 15
  }
  method sueldoACobrar() = sueldo
}

object gimenez {
  var fondoParaSueldo = 300000

  method pagarSueldo(empleado) {
    fondoParaSueldo = fondoParaSueldo - empleado.sueldoACobrar()
    
  }
  method fondo() = fondoParaSueldo
}