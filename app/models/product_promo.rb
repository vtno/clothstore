class ProductPromo < ActiveRecord::Base
	belongs_to :product
	belongs_to :promotion
end
