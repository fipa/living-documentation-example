Feature: Búsqueda de productos por precio maximo
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de ScrumShop
	Quiero poder buscar productos por precio

	Background:
    	Given existen los productos, con sus precios:
    	| producto  					| precio 	|
		| Scrum Post-Its				|	1200	|
		| Scrum Quick Reference 		|	10000	|
		| Agile Planning Poker Cards 	|	3000	|
		| Magnetic White Board			|	8000	|

		When Navego al listado de productos existentes

    Scenario: Usuario busca productos existentes por precio menor a 5000
		When busco por precio menor a 5000
		Then veo los productos: 
    	| Scrum Post-Its 				|
    	| Agile Planning Poker Cards 	|

    	But no veo los productos:
    	| Magnetic White Board			|
    	| Scrum Quick Reference 		|

    Scenario: Usuario busca productos existentes por precio 0
		When busco por precio menor a 0
		Then veo 0 productos