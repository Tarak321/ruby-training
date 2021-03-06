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
        found = nil 
        each do |ele| 
            found = ele
            break 
        end 
        found
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
    def collect(&block)
        map(&block)
    end
    def reduce initial = nil, sym = nil, &block  
        if sym.nil? && block.nil? 
            sym = initial
            initial = nil
        end   
        block = case sym 
        when Symbol 
            lambda { |mod, value| mod.send(sym, value) } 
        when nil
            block 
        end   
        if initial.nil?
            ignore_first = true
            initial = first
        end   
        index = 0  
        each do |ele| 
            unless ignore_first && index == 0 
                initial = block.call(initial, ele) 
            end
            index += 1
        end
        initial
    end
    def max
        index=0
        each do |ele|
            if index==0
                val=ele
                index+=1
            elsif val<ele
                val=ele
            end
        end
        return val
    end
    def min
        reduce do |initial,ele|
            initial>ele ? ele : initial
        end 
    end
    def sort(array)
        s = array.size
        return array if s <=1 
        swp = true 
        while swp 
            swp = false 
            (s-1).times do |x| 
                if array[x] > array[x+1] 
                    array[x], array[x+1] = array[x+1], array[x] 
                    swp = true 
                end 
            end 
        end 
        array
    end
    def zip


    end
    

end
