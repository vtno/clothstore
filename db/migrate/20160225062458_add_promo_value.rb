class AddPromoValue < ActiveRecord::Migration
  def change
  	add_column :promotions, :discount, :float
  end
end
