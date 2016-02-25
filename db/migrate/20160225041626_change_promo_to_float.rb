class ChangePromoToFloat < ActiveRecord::Migration
  def change
  	change_column :products, :promotion, :float
  end
end
