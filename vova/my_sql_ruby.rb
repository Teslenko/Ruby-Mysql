require 'rubygems'
require 'mysql2'

puts "Welcome to School database"

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "root", :database => "school")

# puts "People in school:"

# query=client.query('SELECT * FROM people WHERE type="Becend-dev" ')
query=client.query('Select * from people')

query=client.query('SELECT *FROM people LEFT JOIN people_groups on people.id=people_groups.people_id
LEFT JOIN groups on people_groups.group_id=groups.id WHERE groups.name="5A"')

query.each do |h|
  puts h
end

client.close
