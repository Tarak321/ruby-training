sol=[["-","-","-"],["-","-","-"],["-","-","-"]]

def printboard(sol)
    x=0
    while x<3 
        y=0
        while y<3 
            print sol[x][y]+" "
            y+=1 
        end 
        puts
        x+=1 
    end
end

#printboard(sol)

def checkrow(sol,val)
    m=0
    while m<3 
        if sol[m][1]==sol[m][0]&&sol[m][1]==sol[m][2]&&sol[m][1]==val
           return true
        end
        m+=1
    end
    return false

end


def checkcol(sol,val)
    m=0
    while m<3 
        if sol[1][m]==sol[0][m]&&sol[1][m]==sol[2][m]&&sol[1][m]==val
           return true
        end
        m+=1
    end
    return false
end

def checkdiag(sol,val)
    if sol[0][0]==sol[1][1]&&sol[0][0]==sol[2][2]&&sol[0][0]==val 
    return true
    end
    if sol[0][2]==sol[1][1]&&sol[0][2]==sol[2][0]&&sol[0][2]==val 
    return true
    end 
    return false

end

def magic(sol)
    if checkrow(sol,"O")||checkcol(sol,"O")||checkdiag(sol,"O") 
    puts "player one won"
    return true
    end
    if checkrow(sol,"X")||checkcol(sol,"X")||checkdiag(sol,"X") 
    puts "player two won"
    return true
    end
end

puts "welcome to the game "
y=1

while y 
    puts "Player one please enter your coordinates"
    x,y = gets.split.map(&:to_i)
    sol[x][y]="O"
    if magic(sol)
        break
    end
    printboard(sol)
    puts "Player two please enter your coordinates"
    x,y = gets.split.map(&:to_i)
    sol[x][y]="X"
    if magic(sol) 
        break
    end
    printboard(sol)
end

