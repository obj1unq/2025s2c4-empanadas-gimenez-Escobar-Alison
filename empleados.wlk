//Escribir aqui los objetos
object galvan {
  var property sueldo = 15000
  var saldo = 0

  method saldo() = saldo
  
  /*Dinero me tiene que dar un nro positivo; 
  Si el saldo es mayor a 0 me dará el saldo, si no 0
  Entonces los nros posibles serán de 0 a n
  El mismo razonamiento tendrá deuda, solo que serán de los nros negativos
  */
  method dinero() = saldo.max(0)

  method deuda() = - (saldo.min(0))

  method gastar(cuanto) {
    saldo -= cuanto
  }

  method cobrar() {
    saldo += self.sueldo()
  }
}

object baigorria {
  var property sueldoPorEmpanada = 15
  var empanadasVendidas = 0
  var totalCobrado = 0

  method vender(cantidad) {
    empanadasVendidas += cantidad
  }

  method empanadasVendidas() = empanadasVendidas 

  method sueldo() = empanadasVendidas * sueldoPorEmpanada
  
  method cobrar() {
    totalCobrado += self.sueldo() 
    empanadasVendidas = 0
  }
  
  method totalCobrado() = totalCobrado
}

object gimenez {
  var fondo = 300000

  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrar()
  }

  method fondo() = fondo 
}