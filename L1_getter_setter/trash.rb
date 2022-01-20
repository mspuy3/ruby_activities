solution = 0

loop do
  puts 'Type any number[press q to quit]'
  answer = gets.chomp
  
  if answer.to_i.is_a? !Numeric
   puts "not a number!"
  end
  
  solution += answer.to_i if answer.to_i.is_a? Numeric

  puts "The current count is #{solution}"
  
  break if answer == 'q'
end

puts "Solution is: #{solution}"