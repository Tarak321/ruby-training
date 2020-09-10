$global_var = " I am a global var"

class Test
    @@count =1
    def initialize
        @@count+=1
    end

    public
    def method1
        puts "I am method 1"
    end
    def method2
        p_meth
        puts "I am method 2"
    end

    private
    def p_meth
        puts "private method"
    end

    protected
    def proc_m 
        puts "protected method"
    end

end


class Utest < Test
    def some 
        puts"some"
        proc_m
    end
end

t1 = Test.new
t1.method1
t1.method2

ut1 = Utest.new
ut1.some
t1.proc_m
