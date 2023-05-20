# Write your code here.

katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    current_line = katz_deli.map.with_index { |person, index| "#{index + 1}. #{person}" }
    puts "The line is currently: #{current_line.join(' ')}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  position = katz_deli.length
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    serving_person = katz_deli.shift
    puts "Currently serving #{serving_person}."
  end
end
line(katz_deli)

take_a_number(katz_deli, "Alice")

take_a_number(katz_deli, "Bob")


line(katz_deli)


now_serving(katz_deli)



line(katz_deli)
