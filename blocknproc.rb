# a simple method

def hugs(message)
    puts message
    puts "{"
    yield "hello","hi"
    puts "}"
    yield "bubye","hi"
end



#invoke the method

# hugs do |mess|
#     puts "thank you #{mess}"
# end

my_proc = proc do |mess,mess2|
    puts "my proc is called  #{mess} and #{mess2}"
end

my_proc.call

hugs "uhuhuhuhh",&my_proc