module Lengthconversion
    def self.miles_to_feet(miles)
        miles*5280
    end
    def self.miles_to_inches(miles)
        feet= miles_to_feet(miles)
        feet*12
    end
    def self.miles_to_centimeter(miles)
        inch= miles_to_inches(miles)
        inch*2.54
    end
end