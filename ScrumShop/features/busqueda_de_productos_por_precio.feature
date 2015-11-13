Feature: Búsqueda de productos por precio maximo
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de ScrumShop
	Quiero poder buscar productos por su precio

    Scenario: Usuario busca productos existentes por precio
    	Given existen los productos, con sus precios:
    	| producto  					| precio 	|
		| Scrum Post-Its				|	1200	|
		| Scrum Quick Reference 		|	10000	|
		| Agile Planning Poker Cards 	|	3000	|
		| Agile Rocks T-Shirt	 		|	8000	|

		When Navego al listado de productos existentes
		And busco por precio menor a 5000

		Then veo los productos: 
    	| Scrum Post-Its 				|
    	| Agile Planning Poker Cards 	|

    	But no veo los productos:
    	| Agile Rocks T-Shirt			|
    	| Scrum Quick Reference 		|

    Scenario: Usuario busca productos existentes por precio 0
    	Given existen los productos, con sus precios:
    	| producto  					| precio 	|
		| Scrum Post-Its				|	1200	|
		| Scrum Quick Reference 		|	10000	|
		| Agile Planning Poker Cards 	|	3000	|
		| Agile Rocks T-Shirt	 		|	8000	|

		When Navego al listado de productos existentes
		And busco por precio menor a 0
		Then veo 0 producto(s)