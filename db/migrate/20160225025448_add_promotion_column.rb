class AddPromotionColumn < ActiveRecord::Migration
  def change
  	add_column :promotions, :name, :string
  	add_column :promotions, :discount, :integer
  	add_reference :promotions, :product, index: true
  end
end
