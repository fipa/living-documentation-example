Feature: Búsqueda de productos disponibles
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de The Scrum Store
	Quiero poder buscar productos disponibles

	Background: 
		Given existen los productos, con su stock:
		| producto 					| stock |
		| Scrum Post-Its			|	1	|
		| Scrum Quick Reference 	|	10	|
		| Planning Poker Cards	 	|	0	|
		| Magnetic White Board		|	50	|
		When Navego al listado de productos existentes
	
	Scenario: Usuario busca solo productos disponibles

    	When busco solo productos disponibles
    	Then veo los productos:
    	| Scrum Post-Its 			|
    	| Scrum Quick Reference 	|
    	| Magnetic White Board		|

    	But no veo los productos: 
    	| Planning Poker Cards	 	|