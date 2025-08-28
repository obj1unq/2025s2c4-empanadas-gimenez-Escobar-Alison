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

  method vender(cantidad) {
    cantEmpanadas += cantidad
  }

  method sueldo() = cantEmpanadas * sueldoPorEmpanada

}

object gimenez {
  var fondo = 300000

  method fondo() = fondo 

  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
  }
}