//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  
  method sueldo(newSueldo) {
      sueldo = newSueldo
  }
  method sueldoACobrar() = sueldo

  method cobrarSueldo() {
    //vacio
  }
}

object baigorria {
  var sueldo = 0
  var totalCobrado = 0

  method vender(cantEmpanadas) {
    sueldo = sueldo + cantEmpanadas * 15
  }

  method sueldoACobrar() = sueldo

  method cobrarSueldo() {
    totalCobrado = totalCobrado + sueldo
    sueldo = 0
  }

  method totalCobrado() = totalCobrado 
}

object gimenez {
  var fondoParaSueldo = 300000

  method pagarSueldo(empleado) {
    fondoParaSueldo = fondoParaSueldo - empleado.sueldoACobrar()
    empleado.cobrarSueldo()
  }
  method fondo() = fondoParaSueldo
}