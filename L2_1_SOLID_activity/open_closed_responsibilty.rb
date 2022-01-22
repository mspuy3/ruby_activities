# Software entities (classes, modules, functions, etc.) should be open for extension but closed for modification

class FullTimePayslipGenerator
   attr_reader :employee, :month, :salary
   def initialize(employee, month, salary)
     @employee = employee
     @month = month
     @salary = salary
   end

   def generate_payslip
      puts "Payslip has been generated for Full-time Employee:"
      puts "Name: #{@employee}"
      puts "Month: #{@month}"
      puts "Salary: #{@salary}"
   end
end

class PartTimePayslipGenerator
   attr_reader :employee, :month, :salary
   def initialize(employee, month, salary)
     @employee = employee
     @month = month
     @salary = salary
   end

   def generate_payslip
      puts "Payslip has been generated for Part-Time Employee:"
      puts "Name: #{@employee}"
      puts "Month: #{@month}"
      puts "Salary: #{@salary}"
   end
end

class PayslipGenerator
   attr_reader :employee, :month, :salary, :type
   def initialize(employee, month, salary, type)
     @employee = employee
     @month = month
     @salary = salary
     @type = type
   end

   def generate_payslip
      EMPLOYEE_TYPE[@type].new(@employee, @month, @salary).generate_payslip()
   end
end

EMPLOYEE_TYPE = {
   'full_time' => FullTimePayslipGenerator,
   'part_time' => PartTimePayslipGenerator
}

# I can create more EMPLOYEE_TYPE's and subsequent class to extend the features. 

new_user = PayslipGenerator.new("MU", "January", 13000, "full_time")
new_user.generate_payslip

new_user = PayslipGenerator.new("LS", "January", 7000, "part_time")
new_user.generate_payslip