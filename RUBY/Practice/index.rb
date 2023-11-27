# Variables 
character_name = "Nives"
character_age = "35"

puts "Hello world"
puts "My name is #{character_name}"
puts "I am #{character_age} years old"

# Strings 
phrase = "Giraffe Academy"
puts phrase
puts phrase.upcase()
puts phrase.downcase()
puts phrase.include? "sas"


# Getting User Input
# puts "Enter your name"
# name = gets.chomp()
# puts "Enter your age"
# age = gets.chomp()
# puts "Hello #{name}, you are #{age} years old"


# Arrays and for loops

friends = Array["Nives", "Nives", "Oscar", "Kenneth"]
# friends = Array.new
# friends[0] = "Nives"
# friends[5] = "Kenneth"

for friend in friends
    puts friend
end

friends.each do |friend|
    puts friend
end

6.times do |index|
    puts index
end

(1..10).each do |i|
    puts i
end


# Hashes - Key value Pair - Unique keys
states = {
    :Pennsylvania => "PA",
    "New York" => "NY",
    "Oregon" => "OR"
}

puts states["Oregon"]
puts states[:Pennsylvania]

# methods / functions

def say_hi(name="No Name")
    puts "Hi #{name}"
end

say_hi("Nives")


# a = 77 
# if a <50   
#   puts "Student is fail"   
# elsif a >= 50 && a <= 60   
#   puts "Student gets D grade"   
# elsif a >= 70 && a <= 80   
#   puts "Student gets B grade"   
# elsif a >= 80 && a <= 90   
#   puts "Student gets A grade"    
# elsif a >= 90 && a <= 100   
#   puts "Student gets A+ grade"    
# end  


# Case Expression
# same comparision with a different value like if statements above (a)

def get_day_name(day)
    day_name = ""
    case day
    when "tue"
        day_name = "Tuesday"
    when "mon"
        day_name = "Monday"
    when "wed"
        day_name = "Wednesday"
    when "thur"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    when "sat"
        day_name = "Saturday"
    when "sun"
        day_name = "Sunday"
    end

    return day_name
end

puts get_day_name("mon")


# While loops
index = 1
while index <= 5
    puts index
    index += 1
end


# handling exceptions

begin
    num = 10/0
rescue ZeroDivisionError
    puts "Division by Zero error"
rescue TypeError => e
    puts e
end

# Using modules 

