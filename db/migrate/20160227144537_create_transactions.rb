class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :transactions, [:product_id, :user_id], unique: false
  end
end
