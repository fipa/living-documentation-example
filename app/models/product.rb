class Product < ActiveRecord::Base

	belongs_to :category

	def real_price
		promotion = Promotion.find_by_name('cyber_monday')
		if !promotion.nil? && promotion.status?
			price * (100 - promotion.discount) / 100
		else
			price
		end
	end

end
