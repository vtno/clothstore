class Product < ActiveRecord::Base
	has_many :promotions
	has_many :users, through: :transactions
  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end
  
end
