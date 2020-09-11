def reduce
    def reduce initial = nil, sym = nil, &block
      
        if sym.nil? && block.nil?
          operation = accumulator
          initial = nil
        end
      
        block = case operation
          when Symbol
            lambda { |acc, value| acc.send(operation, value) }
          when nil
            block
        end
      
        if accumulator.nil?
          ignore_first = true
          accumulator = first
        end
      
        index = 0
      
        each do |element|
          unless ignore_first && index == 0
            accumulator = block.call(accumulator, element)
          end
          index += 1
        end
        accumulator
      end


end