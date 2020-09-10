# basic class deffinition 

class Animal
    attr_accessor :kingdom
    def eat
        puts "I am eating"
    end
    def stroll
        puts "I am strolling"
    end
    def initialize
        @kingdom = "type of kingdom"
        puts "animal class is initialized"
    end
end


animal = Animal.new
animal.eat
puts animal.kingdom

class Cat< Animal
    def eat 
        puts "cat is eating"
    end
end

cat = Cat.new
cat.eat
puts cat.kingdom
