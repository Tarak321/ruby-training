
require_relative('./tsgenumrable')

class Store 
    include MyEnumerable
    attr_accessor :snacks

    def initialize
        @snacks=[]
    end

    def addsnack(snack)
        @snacks<<snack
    end
    def each
        snacks.each do |snacks|
            yield snacks
        end
    end
    

end

mumbai=Store.new
mumbai.addsnack("vadapav")
mumbai.addsnack("samosa")
mumbai.addsnack("pepsi")

p mumbai
p mumbai.find{|snack|  snack.downcase=="vadapav"}
# p mumbai.map{|snack| snack.upcase}
p mumbai.find_all{|snack| snack.downcase.include?("p")}



