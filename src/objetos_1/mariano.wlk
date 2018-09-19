import golosinas.*

object mariano {
	
	var bolsaDeGolosinas= []
	var property saboresDeGolosinas=[]
	
	method comprar(golosina) { 
		bolsaDeGolosinas.add(golosina)
		saboresDeGolosinas.add(golosina.gusto())
	}
	
	method desechar(unaGolosina){ bolsaDeGolosinas.remove(unaGolosina) }
	
	method probarGolosinas(){ bolsaDeGolosinas.forEach({golosina => golosina.mordisco()})}
	
	method hayGolosinasSinTACC()= bolsaDeGolosinas.any({golosina => golosina.libreGluten() }) 
	
	method preciosCuidados()= bolsaDeGolosinas.any({golosina => golosina.peso() <= 10})
	
	method golosinaDeSabor(unSabor)= bolsaDeGolosinas.find({golosina=> golosina.gusto() == unSabor})
	
	method golosinasDeSabor(unSabor)= bolsaDeGolosinas.filter({golosina=> golosina.gusto() == unSabor  })
	
	method sabores(){
		bolsaDeGolosinas.forEach({golosina=> saboresDeGolosinas.add(golosina.gusto())}) 
		return saboresDeGolosinas.withoutDuplicates()
	}
	
	method golosinas()= bolsaDeGolosinas
	
	method golosinaMasCara()= bolsaDeGolosinas.max({golosina=> golosina.precio()})
	
	method pesoGolosinas()= bolsaDeGolosinas.sum({golosina => golosina.peso()})
	
	method golosinasFaltantes(golosinasDeseadas){ 
		return	golosinasDeseadas.difference(bolsaDeGolosinas.asSet()) 
	}
	
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.difference(saboresDeGolosinas.asSet())
	}
}

