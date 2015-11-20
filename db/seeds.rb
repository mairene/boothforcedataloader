# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'csv'

# CSV.foreach("../ProductShowcaseCSV.csv",:headers => true, :header_converters => :symbol, :converters => :all) do |row|
# 	puts "****************************************"
# 	puts "#{row}"
# 	puts "#{row['Booth']}"
# 	puts "#{row['Roles that can staff area?']}"
# 	puts "#{row['Booth Description']}"
# 	puts "#{row[3]}"
# 	puts "#{row[4]}"
# 	puts "****************************************"
# end

require 'csv'

booths = {}

file = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/db/ProductShowcaseCSV.csv"

CSV.foreach(file, :headers => true, :header_converters => :symbol, :converters => :all) do |row|
  booths[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
end

puts booths

puts "****************************************"

booths.each do |booth|
	puts booth
end