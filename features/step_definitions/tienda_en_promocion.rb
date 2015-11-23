Given(/^Existe el producto “(.*)” con un precio de \$(\d+)$/) do |product, price|
	Product.create(name: product, price: price)
end

Given(/^Esta activa la promocion de Cyber Monday$/) do
 	Promotion.create(name: 'cyber_monday', discount: 40, status: true)
end

When(/^Ingreso a la ficha del producto “(.*)”$/) do |product_name|
	product = Product.find_by_name(product_name)
	visit product_path(product)
end

Then(/^veo un precio de \$(\d+)$/) do |price|
  page.assert_text(price)
end
