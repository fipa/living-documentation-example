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

When(/^busco por la categoria (.*)$/i) do |search_string|
	select search_string, :from => 'category_id'
	click_button 'search'
end

When(/^busco con categoria vacia$/i) do
	select '', :from => 'category_id'
	click_button 'search'
end
