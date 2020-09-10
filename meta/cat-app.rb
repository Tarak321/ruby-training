class Object
    def self.const_missing(c)
        if c==:Cat
            require_relative './cat'
            Cat
        else 
            puts "#{c} doesnt exist"
        end
    end
end


purr =Cat.new
purr.talk

bow=Dog.new
bow.talk