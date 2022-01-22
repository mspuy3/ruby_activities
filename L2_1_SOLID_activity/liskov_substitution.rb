# if S is a subtype of T, then objects of type T may be replaced with objects of type S

class User
   def status
     raise "Not Implemented in this Sub-class!"
   end
end

class Fulltime < User
   def status
     puts "I'm a a full-time employee"
   end
end

class Parttime < User
   def status
      puts "I'm a a part-time employee"
   end
end

class UpWorker < User
end

user_1 = Fulltime.new
user_2 = Parttime.new
user_3 = UpWorker.new

user_1.status
user_2.status
user_3.status

#Parttime and Fulltime follow LSP with User as the super class. Upworker does not, since it does not have the status method.