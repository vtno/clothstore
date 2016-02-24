class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :cloth_type
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
