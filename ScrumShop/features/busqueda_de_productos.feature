# language es
Feature: Búsqueda de productos
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de ScrumShop
	Quiero poder buscar productos

	Scenario Outline: Listado de productos existentes
		Given Existe(n) <n> producto(s) en ScrumShop
		When Navego al listado de productos existentes
		Then Veo <n> producto(s)
	Examples:
	| n |
	| 0 |
	| 1 |
	| 3 |
	| 10|

	Scenario: Usuario busca productos existentes con nombre "Scrum"
		Given existen los productos:
		| Scrum Post-Its			|
		| Scrum Quick Reference 	|
		| Planning Poker Cards	 	|
		| Agile Rocks T-Shirt	 	|

		When Navego al listado de productos existentes
    	And busco por nombre con la palabra Scrum
    	Then veo los productos:
    	| Scrum Post-Its 			|
    	| Scrum Quick Reference 	|

    	But no veo los productos: 
    	| Planning Poker Cards	 	|
    	| Agile Rocks T-Shirt		|

	Scenario: Usuario busca productos existentes con nombre "Agile"
		Given existen los productos:
		| Scrum Post-Its				|
		| Scrum Quick Reference 		|
		| Agile Planning Poker Cards 	|
		| Agile Rocks T-Shirt	 		|

		When Navego al listado de productos existentes
    	And busco por nombre con la palabra Agile
    	Then veo los productos: 
    	| Agile Planning Poker Cards 	|
    	| Agile Rocks T-Shirt			|    	
    	
    	But no veo los productos:
    	| Scrum Post-Its 				|
    	| Scrum Quick Reference 		|

	Scenario: Usuario busca productos inexistentes
		Given existen los productos:
		| Scrum Post-Its				|
		| Scrum Quick Reference 		|
		| Agile Planning Poker Cards 	|
		| Agile Rocks T-Shirt	 		|

		When Navego al listado de productos existentes
    	And busco por nombre con la palabra EstaPalabraNoEstaEnElCatalogo
    	Then Veo 0 producto(s)