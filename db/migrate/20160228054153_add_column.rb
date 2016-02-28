class AddColumn < ActiveRecord::Migration
  def change
  	add_column :promotions, :start, :datetime
  	add_column :promotions, :end, :datetime
  end
end
