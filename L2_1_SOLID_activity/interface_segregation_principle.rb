# Clients should not be forced to depend upon interfaces that they don't use.

class EmployeeType
   def status
     raise "Not Implemented in this Sub-class!"
   end
end

class Fulltime < EmployeeType
   def status
     puts "I'm a a full-time employee"
   end
end

class Parttime < EmployeeType
   def status
      puts "I'm a a part-time employee"
   end
end

class Sex
   def status
     raise "Not Implemented in this Sub-class!"
   end
end

class Male < Sex
   def status
     puts "I'm a male employee"
   end
end

class Female < Sex
      puts "I'm a a female employee"
   end
end

# EmployeeType and Sex are different classes that can function on their own