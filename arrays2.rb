fruits = ["kiwi","java","apple","grapes"]


first,*rest=["kiwi","java","apple","grapes"]
puts first, rest.inspect

first,* = ["kiwi","java","apple","grapes"]
puts first

first,*second,last = ["kiwi","java","apple","grapes"]
puts first,second.inspect,last


