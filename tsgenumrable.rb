module MyEnumerable
    def map
        result = []
        each do |ele|
            result<<yield(ele) 
        end
        result
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
    def reduce


    end
    def collect


    end
    def max


    end
    def min


    end
    def sort


    end
    def zip


    end
    

end
