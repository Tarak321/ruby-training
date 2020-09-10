menu = {"taco":4,"tsg":3,"burger":55}


# menu[:burger]=35
# puts menu

# menu1 ={ghh:  45,kll:   444}
# menu2 = {:tsg=>444,:gsss=>566}
# p menu1.fetch(:ghh)
# p menu2

menu.each do |key,value|
    puts  "#{key} = #{value}"
end

menu.each_key do |key|
    puts key 
end
menu.each_value do |key|
    puts key 
end

menu.each_with_index do |(key,value),index|
    puts " #{index}. #{key} = #{value}"
end