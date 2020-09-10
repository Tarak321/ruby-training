#to create an array
x=["heads","tails"].sample
if x=="heads"
    puts "It came heads"
else
    puts "It came tails"
end

age =21

status= age<22 ? :minor : :major

p status
#symbols and strings are substitutable
label = if age<18
    :minor
elsif age<21
    :cantsay
else
    :can
end

puts "The label value is #{label}"


case age
when 18,21
    puts "you are 18"
when 25
    puts "you are 21"
else
    puts "cant decide"
end

puts "hello" if age==21