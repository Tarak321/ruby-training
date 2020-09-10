begin #try
    1/0
rescue ZeroDivisionError=> e #catch
    p e.message
    p e.backtrace.inspect

rescue exception=>e
    p e
ensure #default
   puts "This will always execute" 
end




