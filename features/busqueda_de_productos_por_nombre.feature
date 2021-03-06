Feature: Búsqueda de productos por nombre
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de ScrumShop
	Quiero poder buscar productos por su nombre

	Background: 
		Given existen los productos:
		| Scrum Post-Its			|
		| Scrum Quick Reference 	|
		| Planning Poker Cards	 	|
		| Magnetic White Board		|
		When Navego al listado de productos existentes
	
	Scenario: Usuario busca productos existentes con nombre "Scrum"

    	When busco por nombre con la palabra Scrum
    	Then veo los productos:
    	| Scrum Post-Its 			|
    	| Scrum Quick Reference 	|

    	But no veo los productos: 
    	| Planning Poker Cards	 	|
    	| Magnetic White Board		|

	Scenario: Usuario busca productos inexistentes
    	When busco por nombre con la palabra EstaPalabraNoEstaEnElCatalogo
    	Then Veo 0 productos
