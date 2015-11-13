Feature: Búsqueda de productos por su categoria
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de ScrumShop
	Quiero poder buscar productos por su categoria

	Background:
		Given existen las categorias:
		| Articulos	|
		| Libros 	|
		| Poleras	|

		And existen los productos, con sus categorias:
		| producto						| categoria |
		| Scrum Quick Reference 		| Libros	|
		| Agile Planning Poker Cards 	| Articulos	|
		| Agile Rocks T-Shirt	 		| Poleras	|
		| Scrum Post-Its				| Articulos	|

		When Navego al listado de productos existentes

    Scenario: Usuario busca productos existentes con categoria "Articulos"
		When busco por la categoria Articulos
		Then veo los productos: 
    	| Scrum Post-Its 				|
    	| Agile Planning Poker Cards 	|

    	But no veo los productos:
    	| Agile Rocks T-Shirt			|
    	| Scrum Quick Reference 		|

    Scenario: Usuario busca productos existentes con categoria vacía
		When busco con categoria vacia
		Then Veo 4 producto(s)