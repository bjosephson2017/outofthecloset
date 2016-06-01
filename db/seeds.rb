require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'clothings.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Transaction.new
  t.weather_forecast_id = row['Weather Forecasts_id']
  t.size = row['city']
  t.color = row['zip']
  t.brand = row['zip']
  t.type = row['state']
  t.save
end

puts "There are now #{Transaction.count} rows in the transactions table"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
