#Acciones e interacciones del juego

def playRandomComputerVsRandomComputer(history)
	clear
	putRandomUserShips
	loop do		
		refreshCounts	    
		shotRandomBulletToTab1
		shotRandomBulletToTab2
        if history == FALSE then
            clear
        end 
		printTabsUserView(10)
        printInfo
		sleep 0.25               
	break if isGameOverOnTab1? || isGameOverOnTab2?
	end
end	


def playPlayerVsRandomComputer(history)
    clear
    loop do
        refreshCounts
        if history == FALSE then
            clear
        end	
      	printTabsUserView(10)
		printInfo
        shotToTab2
        sleep 0.5
		shotRandomBulletToTab1			
	break if isGameOverOnTab1? || isGameOverOnTab2?
	end
	printTabsUserView(10)
	printInfo
end

def playPlayerVsNativeIA
    
end

def playPlayerVsTensorFlow
    
end

def playNativeIAVsTensorFlow
    
end

def playNativeIAVsRandomComputer
    
end

def playNativeIAVsNativeIA
    
end

def playTensorFlowVsRandomComputer
    
end    

def playPlayerVsPlayerLAN
    
end

def playPlayerVsPlayerWAN
    
end