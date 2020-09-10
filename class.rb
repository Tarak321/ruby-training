class Gadget
    attr_accessor :gadget_type, :production_no
    def initialize
        @gadget_type ="Electronics"
        @production_no = rand(1..1000)
    end
    def to_s
        "Gadget #{@production_no} is this that #{@gadget_type}"
    end
    
end



phone = Gadget.new
p phone.to_s

laptop = Gadget.new
p laptop.to_s

laptop.gadget_type = "lappy"
laptop.production_no = "1111"
p laptop.gadget_type
p laptop.production_no

