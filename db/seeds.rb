# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
	CSV.foreach(Rails.root.join("db/seeds_data/clothstore_data.csv"), headers: true) do |row|
  		Product.find_or_create_by(name: row[0], cloth_type: row[1], price: row[2], description: row[3], promotion: row[4])

end