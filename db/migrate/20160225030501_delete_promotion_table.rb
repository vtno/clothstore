class DeletePromotionTable < ActiveRecord::Migration
  def change
  	drop_table :promotions
  end
end
