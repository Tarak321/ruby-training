def hugs(message,config,&blog)
    puts message,config
    # p blog
    puts "{"
    yield "hello","hi" if block_given?
    puts "}"
    
end


my_proc = proc do |mess,mess2|
    puts "my proc is called  #{mess} and #{mess2}"
end

hugs "meet me today","food studio" ,&my_proc