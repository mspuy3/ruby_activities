# A class should have only one reason to change.

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

#I can generate a payslip for an employee. The generator class can be modified without changing the mailer class.
new_user = PayslipGenerator.new("MU", "January", 13000)
new_user.generate_payslip

#I can email the employee about the payslip. The mailer class can be modified without changing the generator class. Caveat is that, mailer class expects the three attributes as created using the generator class (employee, month, salary). This means we cannot modify the initialization of the generator, unless we also modify that of the mailer. Otherwise, mailer will not work.
new_user_email = PayslipMailer.new(new_user)
new_user_email.send_mail
