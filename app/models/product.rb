class Product < ActiveRecord::Base
	def check_discount() 
		products = Product.all

		products.each do |product|
	    	if product.promotion != 0
	      		discounted = product.price * (1-product.promotion/100)
	      		return discounted
	    	else
	      		return products.price
	    	end

	  	end
	end
end
