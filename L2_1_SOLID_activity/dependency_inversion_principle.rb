# High-level modules should not depend on low-level modules. Both should depend on abstractions.

# Same as single_responsibility

class PayslipGenerator
   attr_reader :employee, :month, :salary
   def initialize(employee, month, salary)
     @employee = employee
     @month = month
     @salary = salary
   end

   def generate_payslip
      puts "Payslip has been generated:"
      puts "Name: #{@employee}"
      puts "Month: #{@month}"
      puts "Salary: #{@salary}"
   end
 end
 
 class PayslipMailer
   def initialize(employee_details)
     @employee = employee_details.employee
     @month = employee_details.month
     @salary = employee_details.salary
   end

   def send_mail
      puts "Payslip email sent:"
      puts "Name: #{@employee}"
      puts "Month: #{@month}"
      puts "Salary: #{@salary}"
   end
 end

#I can generate a payslip for an employee. The generator class can be modified without changing the mailer class. Payslip generation can be thought of as the higher order function, i.e. it will not depend on the mailer feature. 
new_user = PayslipGenerator.new("MU", "January", 13000)
new_user.generate_payslip

#I can email the employee about the payslip. Emailer is the lower order function. It will depend on the payslip generation. You cannot email without generating a payslip first.
new_user_email = PayslipMailer.new(new_user)
new_user_email.send_mail