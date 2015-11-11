Given(/^Existen (\d+) productos en ScrumShop$/) do |n_products|
	i = 1
	n_products.to_i.times do
		product = Product.new(	name: "Scrum Post Its #{i}", 
	  							description: "Imprescindible para cualquier Planning, Grooming, Retrospectiva, con pegamento ultra sticky",
	  							price: 1200, stock: 100)
		product.save
		i+= 1
	end
end


When(/^Navego al listado de productos existentes$/) do
	visit '/products/'
	#visit 'http://localhost:3000/products'
end

Then(/^Veo (\d+) productos?$/) do |n_products|
	page.assert_text(/Encontrado(s)? #{n_products} Producto(s)?/)

end
