module ProductsHelper

	def product_image(product)
		image_tag(product.id.to_s + ".jpg", width: 300)
	end

	def product_thumbnail(product)
		image_tag(product.id.to_s + ".jpg", width: 100)
	end

end
