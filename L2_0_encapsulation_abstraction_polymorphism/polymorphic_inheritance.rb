class Confection
   def prepare
      puts "Baking at 350 degrees for 25 minutes."
   end
end

   class Cupcake < Confection
      def frost
         puts "Applying frosting."
      end
   end

   class Banana_Cake < Confection
   end

cup = Cupcake.new()

banana = Banana_Cake.new()

puts "For Cupcake:"
cup.prepare
cup.frost
puts "\n"
puts "For Banana Cake:"
banana.prepare

#Cupcake and Banana_Cake can access the both prepare method from their parent class Confection. When objects of different classes have access to the same interface (i.e. method), they are polymorphic. 