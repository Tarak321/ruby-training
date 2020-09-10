def fun(a,b,c,d)
    puts a
    puts b
    c.call "hi"
    d.call "hello","yo"
end

my_proc = proc do |mess|
    puts "first proc #{mess}"
end

my_proc2 = proc do |mess,mess2|
    puts "second proc #{mess} and  #{mess2} "
end

fun "tsg","truck",my_proc,my_proc2

