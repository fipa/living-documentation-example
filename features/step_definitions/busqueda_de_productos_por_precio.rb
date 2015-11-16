Given(/^existen los productos, con sus precios:$/i) do |products_table|
	products_table.hashes.each do |product|
		Product.create(	name: product['producto'], 
						description: "foo description",
						price: product['precio'], stock: 100)
	end

end

When(/^busco por precio menor a (.*)$/i) do |price|
	fill_in 'price', :with => price
	click_button 'search'
end