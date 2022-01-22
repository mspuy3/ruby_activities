class AbstractionSample

   def initialize(num_1, num_2)             
      @num_1 = num_1
      @num_2 = num_2
   end 

   def display_results
      addition_function
      subtraction_function
      multiplication_function
      division_function
      remainder_function
   end

   private
   def addition_function
      sum = @num_1 + @num_2
      puts "Sum: #{sum}" 
   end
   def subtraction_function
      diff = @num_1 - @num_2
      puts "Difference: #{diff}" 
   end
   def multiplication_function
      prod = @num_1 * @num_2
      puts "Product: #{prod}" 
   end
   def division_function
      quo = @num_1.to_f / @num_2.to_f
      puts "Quotient: #{quo}" 
   end
   def remainder_function
      rem = @num_1 % @num_2
      puts "Remainder: #{rem}" 
   end
end

lols = AbstractionSample.new(1,2)

lols.display_results

# Can display all results of operations, but never individually. 