class Bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

class Alfajor {
	var peso= 300
	
	method precio()= 12
	method peso()= peso 
	method gusto()= "chocolate"
	method libreGluten()= false
	method mordisco(){ peso = peso * 0.8 }

}

class Caramelo {
	var peso= 5
	
	method precio()= 1
	method peso()= peso 
	method gusto()= "frutilla"
	method libreGluten()= true
	method mordisco(){ peso -= 1 }
}
class Chupetin {
	var peso= 7
	
	method precio()= 2
	method peso()= peso 
	method gusto()= "naranja"
	method libreGluten()= true
	method mordisco(){ if(peso > 2) peso -= 0.1* peso }
}

class Oblea {
	var peso= 250
	
	method precio()= 5
	method peso()= peso 
	method gusto()= "vainilla"
	method libreGluten()= false
	method mordisco(){ if(peso > 70) peso -= peso * 0.5 
					   else peso -= 0.25* peso }
}

class Chocolatin {
	var pesoInicial
	var pesoActual = pesoInicial
	
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method peso()= pesoActual
	method precio()= 0.50 * pesoInicial
	method libreGluten()= false
	method mordisco(){ pesoActual -= 2 }
	method gusto()= "chocolate"
}

class GolosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() = golosinaInterior.precio() + 2 
	method peso()= golosinaInterior.peso() + pesoBanio
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() {return golosinaInterior.libreGluten() }	
}

class Tuttifrutti {
	var peso= 5
	var property libreGluten= true 
	var property gusto= "frutilla"
	var mordiscos= 0	
	
	method precio()= if(libreGluten) 7 else 10
	method peso()= peso 
	method mordisco(){ 
		if(mordiscos == 0){
			gusto= "chocolate"
			mordiscos += 1
		}
		else if(mordiscos == 1){
			gusto= "naranja"
			mordiscos += 1
		}
		else{
			gusto= "frutilla"
			mordiscos= 0
		}
	}
	
}

