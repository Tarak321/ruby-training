# def greeting(message)
#     "Hello #{message}"
# end

# p greeting("")


# def write(file,data,mode="w")
#     "#{data} is being written to #{file} in #{mode} mode"
# end


# p write("yyyy","jjjj")


def sum(*args)
    result=0
    args.each do |item|
        result=result+item
    end
    result 
end



puts sum(1,2)
puts sum(1,2,3)
puts sum(1,2,3,4)
