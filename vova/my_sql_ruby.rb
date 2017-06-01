require 'rubygems'
require 'mysql2'

puts "Welcome to School database"
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "root", :database => "school")

  query=client.query('Select * from people')

  # query=client.query('SELECT * FROM people WHERE type="Becend-dev" ')

  # query=client.query('SELECT *FROM people LEFT JOIN people_groups on people.id=people_groups.people_id
  # LEFT JOIN groups on people_groups.group_id=groups.id WHERE groups.name="5A"')

  query.each do |h|
    puts h
  end

client.close

==========================================================================================================================

# result for 7 line: 

Welcome to School database
{"id"=>1, "name"=>"Konstantin D.", "age"=>30, "type"=>"Director"}
{"id"=>2, "name"=>"Oleg Manager", "age"=>28, "type"=>"PM"}
{"id"=>3, "name"=>"Ioan", "age"=>25, "type"=>"Becend-dev"}
{"id"=>4, "name"=>"Dimitry", "age"=>26, "type"=>"Front-End-Dev"}
{"id"=>5, "name"=>"Lilia", "age"=>25, "type"=>"UI/UX"}
{"id"=>6, "name"=>"Alexsei", "age"=>31, "type"=>"Front-End-Dev"}
{"id"=>7, "name"=>"Vova Tesl", "age"=>28, "type"=>"QA Engineer"}
{"id"=>8, "name"=>"Kirill", "age"=>24, "type"=>"Front-End-Dev"}
{"id"=>9, "name"=>"Eduard", "age"=>23, "type"=>"Becend-dev"}
{"id"=>10, "name"=>"Valentin", "age"=>22, "type"=>"Becend-dev"}
-----------------------------------------------------------------------

# result for 9 line: 

Welcome to School database
{"id"=>3, "name"=>"Ioan", "age"=>25, "type"=>"Becend-dev"}
{"id"=>9, "name"=>"Eduard", "age"=>23, "type"=>"Becend-dev"}
{"id"=>10, "name"=>"Valentin", "age"=>22, "type"=>"Becend-dev"}
------------------------------------------------------------------------------

# result for 11,12 line: 
Welcome to School database
