class Object
    def self.const_missing(c)
        puts "#{c} is missing "
        require_relative "./#{c.downcase}"
        val = const_get(c)
        if val
            return val 
        end
    end
end


purr =Cat.new
purr.talk

class Numeric
    @@currencies = { yen: 1.54, usd: 0.014}
    def method_missing(method_name,*args,&block)
        # p self
        # puts " #{method_name} not found  "
        if @@currencies.has_key?(method_name)
            self/@@currencies[method_name]
        else
            super
        end
    end
end

p 100.usd 
p 200.usd 

