squares_proc = Proc.new{|num| num*num  }
squares_lambda = lambda {|num| num*num  }

twice = ->(x){2*x}


p [1,2,3].map(&squares_proc)
p [1,2,3].map(&squares_lambda)
p [1,2,3].map(&twice)

#p twice.call(25)



