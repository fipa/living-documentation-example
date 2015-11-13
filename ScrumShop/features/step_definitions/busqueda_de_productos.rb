Given(/^Existe\(n\) (\d+) producto\(s\) en ScrumShop$/i) do |n_products|

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

Given(/^existen las categorias:$/i) do |categories_table|
	categories_table.raw.each do |category|
		Category.create(name: category.first, description: "foo description")
	end
end

Given(/^existen los productos, con sus categorias:$/i) do |products_table|
	products_table.hashes.each do |product|
		Product.create(	name: product['producto'], 
						category: Category.find_by_name(product['categoria']),
						description: "foo description",
						price: 1200, stock: 100)
	end

end

Given(/^existen los productos, con sus precios:$/i) do |products_table|
	products_table.hashes.each do |product|
		Product.create(	name: product['producto'], 
						description: "foo description",
						price: product['precio'], stock: 100)
	end

end

When(/^Navego al listado de productos existentes$/i) do
	visit '/products/'
end

When(/^busco por nombre con la palabra (.*)$/i) do |search_string|
	 fill_in 'name', :with => search_string
	 click_button 'search'
end

When(/^busco por la categoria (.*)$/i) do |search_string|
	select search_string, :from => 'category'
	click_button 'search'
end

When(/^busco con categoria vacia$/i) do
	select '', :from => 'category'
	click_button 'search'
end

When(/^busco por precio menor a (.*)$/i) do |price|
	fill_in 'price', :with => price
	click_button 'search'
end

Then(/^Veo (\d+) producto\(s\)$/i) do |n_products|
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