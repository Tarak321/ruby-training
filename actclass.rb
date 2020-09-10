$hello =45

class ActiveRecord
    attr_accessor :value
    @@count=0
    p self 
    puts "Hmm its is strange"
    def initialize(value)
        @@count=@@count+1
        @value = value
    end
    def self.all
        p self
        puts "Find all record "
    end
    def self.count
        puts @@count
        puts $hello
    end
    def names
        puts " #{@value}"
    end
end


p= ActiveRecord.new("tsg")
ActiveRecord.count
p.names
