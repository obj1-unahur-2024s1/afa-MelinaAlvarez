object messi{
	var popularidad = 98
	
	method popularidad() = popularidad
	method viaticos() = 5
	method pasaronCosas(){popularidad = 0.max(popularidad-1)}
}

object ronaldo{
	var viaticos = 10
	
	method popularidad() = messi.popularidad()/2
	method viaticos() = viaticos
	method pasaronCosas(){viaticos = viaticos*2}
}

object mbappe{
	var edad = 22
	var goles = 22

	method popularidad() = 2*edad+goles	
	method viaticos() = 25
	method pasaronCosas(){edad = 100.min(edad+1)}
}