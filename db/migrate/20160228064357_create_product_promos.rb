class CreateProductPromos < ActiveRecord::Migration
  def change
    create_table :product_promos do |t|

      t.timestamps null: false
    end
  end
end
