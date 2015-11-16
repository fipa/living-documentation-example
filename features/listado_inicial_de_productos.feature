Feature: Listado inicial de productos
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de ScrumShop
	Quiero poder ver todos los productos existentes

	Scenario Outline: Listado de productos existentes
		Given Existen <n> productos en ScrumShop
		When Navego al listado de productos existentes
		Then Veo <n> productos
	Examples:
	| n |
	| 0 |
	| 1 |
	| 3 |
	| 10|