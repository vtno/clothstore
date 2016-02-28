class AddIndexProdProm < ActiveRecord::Migration
  def change
  	add_column :product_promos, :product_id, :integer
  	add_column :product_promos, :promotion_id, :integer
  end
end
