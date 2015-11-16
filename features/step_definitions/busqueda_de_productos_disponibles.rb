Given(/^existen los productos, con su stock:$/) do |products_table|
	products_table.hashes.each do |product|
		Product.create(	name: product['producto'], 
						description: "foo description",
						price: 1200, stock: product['stock'])
	end
end

When(/^busco solo productos disponibles$/) do
	check 'available'
	click_button 'search'
end
