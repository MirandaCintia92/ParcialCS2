object ak47{
    var daño = 70
    var habilidad = 10
    var dineroEnCuenta = 16000

    method costo() {return 2700}
    method habilidad() = habilidad
    method requisitoDeHabilidad() { 
        self.habilidad() > 10 }
    method uso(){
        if (laUsaUnAgente){
            dineroEnCuenta = ((dineroEnCuenta - 300).min(16000)).max(0)
        }
    }
    method aumentoDeDaño(){
        if (seUsaParaMatar)(unArma){
        
        }
    }
    method aumentaSuDaño(unArma){
        daño = daño(unArma) + 1
    }

    
}