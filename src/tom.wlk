import ratones.*

object tom {
	var energia = 80
	var posicion = 0
	
	method distanciaEntreTomY_(raton) = (posicion - raton.posicion()).abs()
	
	method correrA(raton){
		energia = 0.max(energia - 0.5 * self.velocidad() * self.distanciaEntreTomY_(raton))
		posicion = raton.posicion()
	}
	
	method esMasVeloz(raton) = self.velocidad() > raton.velocidad()
	
	method velocidad() = 5 + (energia/10)
	
	method posicion() = posicion
	
}
