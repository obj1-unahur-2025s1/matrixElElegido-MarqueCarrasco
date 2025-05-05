object neo{
    var energia = 100
    method elegido() = true
    method saltar()= energia * 0.5
    method vitalidad()= energia * 0.1


}

object morfeo{
    var vitalidad = 8
    var estaDescansado= true
    method elegido()= false

    method vitalidad(nueva){
        vitalidad = nueva
    }

    method saltar(){
        estaDescansado= not estaDescansado

        vitalidad = (vitalidad -1).max(0)
    }

    method vitalidad()= vitalidad




}

object trinity{
    method vitalidad()= 0
    method elegida()= false 
}

object nave{
    var pasajeros= []
    method cuantosPasajeros() = pasajeros.size()
    method mayorVitalidad()= pasajeros.max({p=> p.vitalidad()})
    method menorVitalidad()= pasajeros.min({p=> p.vitalidad()})
    method estaElElegido()= pasajeros.any({p=> p.elegido()})
    method estaEquilibrada(){
          return  self.mayorVitalidad().vitalidad() > self.menorVitalidad() * 2
    }

    method choca(){
        pasajeros.forEach({p=> p.saltar() })
        pasajeros.clear()
    }

    method acelerar(){
        pasajeros.filter({p => not p.elegido() }).forEach({p => p.saltar()})
        

    }



}


