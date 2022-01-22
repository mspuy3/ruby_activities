class EncapsulationSample 
        
   def initialize(id, name, addr)             
      @cust_id = id 
      @cust_name = name 
      @cust_addr = addr 
   end
        
   def display_details() 
      puts "Customer id: #@cust_id"
      puts "Customer name: #@cust_name"
      puts "Customer address: #@cust_addr"
   end

end
       
cust1 = EncapsulationSample.new("1", "MU", "Quezon City") 
     
cust2 = EncapsulationSample.new("2", "Emyu", "Makati City")

cust1.display_details() 
cust2.display_details() 

#User cannot change change cust1 or cust2 details.