//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var deuda = 0
  var dinero = 0

  method sueldo() = sueldo

  method sueldo(nuevoSueldo) {
      sueldo = nuevoSueldo
  }

  method gastar(cuanto) {
    if (dinero >= cuanto) {
      dinero -= cuanto
    } else {
      deuda += (cuanto - dinero)
      dinero = 0
    }
  }

  method dinero() = dinero

  method deuda() = deuda 

  method cobroSueldo() {
    
  }
}

object baigorria {
  var cantEmpanadas = 0
  const sueldoPorEmpanada = 15
  var totalCobrado = 0

  method vender(cantidad) {
    cantEmpanadas += cantidad
  }

  method sueldo() = cantEmpanadas * sueldoPorEmpanada
  
  //duda 
  method cobroSueldo() {
    totalCobrado += self.sueldo() 
    cantEmpanadas = 0
  }
  
  method totalCobrado() = totalCobrado

  method cantEmpanadas() = cantEmpanadas 
}

object gimenez {
  var fondo = 300000

  method fondo() = fondo 

  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobroSueldo()
  }
}