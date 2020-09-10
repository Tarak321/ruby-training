module MyEnumerable
    def map(&block)
        result = []
        each do |ele|
            result<<ele 
        end
    end
    def find(&block)
        found=false
        val=nil
        each do |ele|
            if block.call(ele)
                found=true
                val= ele
                break
            end
        end 
        val
    end
    def first

    end
    def select

    end
    def find_all(&block)
        result=[]
        each do |ele|
            if block.call(ele)
                result<<ele
            end
        end 
        result
    end

end
