
katz_deli = []

def line(katz_deli)
  starter_phrase = "The line is currently:"
  if katz_deli.length > 0
    katz_deli.each_with_index {
      |name, index| starter_phrase += " #{index + 1}. #{name}"}
    puts starter_phrase
  else 
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, person)
  katz_deli << person
  katz_deli_count = katz_deli.length
  puts "Welcome, #{person}. You are number #{katz_deli_count} in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0
    # katz_deli_number_1 = katz_deli[0]
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
