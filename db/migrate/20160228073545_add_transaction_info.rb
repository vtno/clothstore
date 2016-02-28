class AddTransactionInfo < ActiveRecord::Migration
  def change
  	add_column :transactions, :amount, :float
  	add_column :transactions, :promo_name, :string
  end
end
