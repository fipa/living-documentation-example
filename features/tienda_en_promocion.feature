Feature: Descuentos de Cyber Monday

Como usuario de The Scrum Store
Quiero acceder a descuentos de Cyber Monday
Para comprar mis productos más barato

Scenario: Precios con descuento de 40%

Given Existe el producto “Scrum Post-Its” con un precio de $1000
And Esta activa la promocion de Cyber Monday
When Ingreso a la ficha del producto “Scrum Post-Its”
Then veo un precio de $600
