Feature: Búsqueda de productos
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de ScrumShop
	Quiero poder buscar productos por su nombre

	Background: 
		Given existen los productos:
		| Scrum Post-Its			|
		| Scrum Quick Reference 	|
		| Planning Poker Cards	 	|
		| Agile Rocks T-Shirt	 	|
		When Navego al listado de productos existentes
	
	Scenario: Usuario busca productos existentes con nombre "Scrum"

    	When busco por nombre con la palabra Scrum
    	Then veo los productos:
    	| Scrum Post-Its 			|
    	| Scrum Quick Reference 	|

    	But no veo los productos: 
    	| Planning Poker Cards	 	|
    	| Agile Rocks T-Shirt		|

	Scenario: Usuario busca productos inexistentes
    	When busco por nombre con la palabra EstaPalabraNoEstaEnElCatalogo
    	Then Veo 0 producto(s)
