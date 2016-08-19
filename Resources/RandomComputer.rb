flag = FALSE

def shotRandomBulletToTab1 #
    loop do 
        row = rand(10)
        col = rand(10)
            if $tab1[row][col] == "≈" then #disparo fallido
                $tab1[row][col] = "0"
                flag = TRUE
                puts
                puts "COMPUTADORA: Disparo Fallido".yellow
                sleep 0.25
            end
            if $tab1[row][col] == "P" || $tab1[row][col] == "I" || $tab1[row][col] == "B" || $tab1[row][col] == "T" then #eeeso le diste!
                $tab1[row][col] = "X"
                puts"SOBATE, te han disparado, y de paso la computadora tiene ñapa".red
                sleep 1
                shotRandomBulletToTab1    
                flag = TRUE
            end    
    break if flag   
    end
end    

def shotRandomBulletToTab2 
    loop do 
        row = rand(10)
        col = rand(10)
            if $tab2[row][col] == "≈" then #disparo fallido
                $tab2[row][col] = "0"
                flag = TRUE
            end
            if $tab2[row][col] == "P" || $tab2[row][col] == "I" || $tab2[row][col] == "B" || $tab2[row][col] == "T" then #eeeso le diste!
                $tab2[row][col] = "X"
                flag = TRUE
            end    
    break if flag   
    end
end    