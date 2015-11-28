Feature: Búsqueda de productos por categoria
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de The Scrum Store
	Quiero poder buscar productos por categoria

	Background:
		Given existen las categorias:
		| Articulos	|
		| Libros 	|
		| Poleras	|

		And existen los productos, con sus categorias:
		| producto						| categoria |
		| Scrum Quick Reference 		| Libros	|
		| Agile Planning Poker Cards 	| Articulos	|
		| Magnetic White Board	 		| Articulos	|
		| Scrum Post-Its				| Articulos	|

		When Navego al listado de productos existentes

    Scenario: Usuario busca productos existentes con categoria "Articulos"
		When busco por la categoria Articulos
		Then veo los productos: 
    	| Scrum Post-Its 				|
    	| Agile Planning Poker Cards 	|
    	| Magnetic White Board			|

    	But no veo los productos:
    	
    	| Scrum Quick Reference 		|

    Scenario: Usuario busca productos existentes con categoria vacía
		When busco con categoria vacia
		Then Veo 4 productos