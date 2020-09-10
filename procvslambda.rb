some_proc = Proc.new{|one,two| puts " This is #{one} and this is #{two} " }
# p some_proc.call("tarak","ganeeeeees")




some_lambda =  lambda  {|one,two| puts " This is #{one} and this is #{two}" }
# p some_lambda.call("tarak","ganesh")



def dietproc
    status= lambda {return "You gave in"}
    p status.call
    "you completed it"
end


resul_proc= dietproc
p resul_proc