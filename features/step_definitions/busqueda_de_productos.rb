Given(/^Existen (\d+) productos en ScrumShop$/i) do |n_products|

	i = 1
	n_products.to_i.times do
		Product.create(	name: "Scrum Post Its #{i}", 
	  							description: "Imprescindible para cualquier Planning, Grooming, Retrospectiva, con pegamento ultra sticky",
	  							price: 1200, stock: 100)
		i+= 1
	end
end

Given(/^existen los productos:$/i) do |products_table|
	products_table.raw.each do |product|
		print "product: #{product}"
		Product.create(	name: product.first, 
						description: "foo description",
						price: 1200, stock: 100)
	end
end

When(/^Navego al listado de productos existentes$/i) do
	visit '/products/'
end

Then(/^Veo (\d+) productos$/i) do |n_products|
	if n_products.to_i > 0
		page.assert_text(/Encontrados? #{n_products} Productos?/)
	else
		page.assert_text(/No se encontraron productos/)
	end
end

Then(/^veo los productos:$/i) do |products_table|
	products_table.raw.each do |product|
		page.assert_text(product.first)
	end
end

Then(/^no veo los productos:$/i) do |products_table|
  	products_table.raw.each do |product|
		page.assert_no_text(product.first)
	end
end