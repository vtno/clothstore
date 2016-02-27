class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products , through: :transactions
  has_many :transactions
  def cart_count
    $redis.scard "cart#{id}"
  end
  def cart_total_price
  	total_price = 0
	get_cart_products.each { |product| total_price+= product.price }
	total_price
  end 
  def get_cart_products
    cart_ids = $redis.smembers "cart#{id}"
  	Product.find(cart_ids)
  end
  def purchase_cart_products!
    get_cart_products.each { |product| purchase(product) }
    $redis.del "cart#{id}"
  end

  def purchase(product)
    products << product unless purchase?(product)
  end

  def purchase?(product)
    products.include?(product)
  end
end
