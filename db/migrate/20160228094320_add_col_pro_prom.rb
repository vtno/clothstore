class AddColProProm < ActiveRecord::Migration
  def change
  end
  add_index :product_promos, [:product_id, :promotion_id], unique: false
end
