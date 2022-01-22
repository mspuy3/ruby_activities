class Dog
   def sound
      puts 'Dog arfs'
   end
   def walk
      puts 'Dog walks'
   end
end

class Cat
   def sound 
      puts 'Cat purrs'
   end
   
   def walk
      puts 'Cat walks'
   end
end

class DuckTypingSample
   attr_reader :animals
   def initialize
      @animals = []
      dog = Dog.new()
      cat = Cat.new()
      @animals.push(dog)
      @animals.push(cat)
   end

   def sound
      animals.each do | animal |
         animal.sound
      end
   end
   
   def walk
      animals.each do | animal |
         animal.walk
   end
end

end

# Dog and Cat classes have the same method names but different results. DuckTypingSample displays duck typing.
duck_type = DuckTypingSample.new()

puts "Duck Typing"
duck_type.sound
duck_type.walk




