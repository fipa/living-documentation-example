Given(/^Existe\(n\) (\d+) producto\(s\) en ScrumShop$/) do |n_products|

	i = 1
	n_products.to_i.times do
		Product.create(	name: "Scrum Post Its #{i}", 
	  							description: "Imprescindible para cualquier Planning, Grooming, Retrospectiva, con pegamento ultra sticky",
	  							price: 1200, stock: 100)
		i+= 1
	end
end

Given(/^existen los productos:$/) do |products_table|
	products_table.raw.each do |product|
		print "product: #{product}"
		Product.create(	name: product.first, 
						description: "foo description",
						price: 1200, stock: 100)
	end
end

Given(/^existen las categorias:$/) do |categories_table|
	categories_table.raw.each do |category|
		Category.create(name: category.first, description: "foo description")
	end
end

Given(/^existen los productos, con sus categorias:$/) do |products_table|
	i = 1 # skipping the headers
	products_data = products_table.raw
	while i < products_data.size do
		Product.create(	name: products_data[i][0], 
						category: Category.find_by_name(products_data[i][1]),
						description: "foo description",
						price: 1200, stock: 100)
		i+= 1
	end

end


When(/^Navego al listado de productos existentes$/) do
	visit '/products/'
end

When(/^busco por nombre con la palabra (.*)$/) do |search_string|
	 fill_in 'name', :with => search_string
	 click_button 'search'
end

When(/^busco por la categoria (.*)$/) do |search_string|
	select search_string, :from => 'category'
	click_button 'search'
end

Then(/^Veo (\d+) producto\(s\)$/) do |n_products|
	if n_products.to_i > 0
		page.assert_text(/Encontrados? #{n_products} Productos?/)
	else
		page.assert_text(/No se encontraron productos/)
	end
end

Then(/^veo los productos:$/) do |products_table|
	products_table.raw.each do |product|
		page.assert_text(product.first)
	end
end

Then(/^no veo los productos:$/) do |products_table|
  	products_table.raw.each do |product|
		page.assert_no_text(product.first)
	end
end