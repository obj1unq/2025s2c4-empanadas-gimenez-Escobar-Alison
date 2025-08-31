//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  
  method sueldo() = sueldo

  method sueldo(nuevoSueldo) {
      sueldo = nuevoSueldo
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
  
  //falta terminar o modificarlo, solo se logra si lo "llamo"
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
  }
}