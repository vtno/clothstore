class Promotion < ActiveRecord::Base
  has_many :products, through: :product_promos
  has_many :product_promos
end
