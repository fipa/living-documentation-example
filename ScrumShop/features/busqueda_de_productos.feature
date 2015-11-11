# language es
Feature: Búsqueda de productos
	Para poder comprar productos y accesorios útiles para mi equipo Scrum
	Como usuario de ScrumShop
	Quiero poder buscar productos


	Scenario: Listado de productos existentes
		Given Existen 1 productos en ScrumShop
		When Navego al listado de productos existentes
		Then Veo 1 producto


	Scenario: Listado de productos existentes 2
		Given Existen 2 productos en ScrumShop
		When Navego al listado de productos existentes
		Then Veo 2 productos

	Scenario: Listado de productos existentes 0
		Given Existen 0 productos en ScrumShop
		When Navego al listado de productos existentes
		Then Veo 0 productos