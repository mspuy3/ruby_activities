contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

#Set up John
contacts["John Cruz"] = {
   :email => contact_data[0][0],
   :address => contact_data[0][1],
   :phone => contact_data[0][2]
}

#Set up Avion
contacts["Avion School"] = {
   :email => contact_data[1][0],
   :address => contact_data[1][1],
   :phone => contact_data[1][2]
}

puts "John Cruz details: #{contacts["John Cruz"]}"
puts "\n"
puts "Avion School details: #{contacts["Avion School"]}"