def repeat(x,y,&b)
    puts x
    y.call
    b.call if block_given?
end


repeat 5,proc {puts "I am a default proc"} do
    puts "I am in a default blog"
end
