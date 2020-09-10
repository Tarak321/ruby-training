family = {
    sisters: ["s1","s2","s3"],
    brothers: ["b1","b2","b3"],
    uncles: ["u1","u2","u3"],
    aunts: ["a1","a2","a3"],
}

#p family[:sisters]

#i_fam = family.select{|key,value| key=="sisters" or key=="brothers"}
ans=[]
i_fam = family.select do |key,value|
    if key==:sisters
        ans= ans.push(value)
    end
    if key==:brothers 
       ans= ans.push(value)
    end
end
ans.flatten!
p ans