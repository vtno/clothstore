class AddPromotionToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :promotion, :integer
  end
end
