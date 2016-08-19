#Dependences
require 'colorize'
require_relative "design"


	def printTab1 #Imprime tablero 1 con valores del arreglo
		newSp 4
		putColorAstLn 40, 1
		puts"             TABLERO #{$player1}".white
		newSp 4
		putColorAstLn 40, 1
		puts
		print "  "
			for $col in(0..9) do
				print "   #{$col+1}".white
			end
			puts
			for i in (0..9) do 
				print "   "
					for j in (0..9) do 
						print "+---"
					end
				puts "+"
				print "#{$l_may[i]}  ".white	#imprime arreglo de letras en mayusculas en $color BLANCO (el arreglo esta inicializado desde la posicion 0)	
					for j in (0..9) do 
						print "| "
						case $tab1[i][j] #Analiza el caracter almacenado en esa posicion para imprimir los $colores correctos.
							when "≈" then #agua
								print "#{$tab1[i][j]}".cyan
								print" "
							when "~" then #agua disparada
								print "#{$tab1[i][j]}".blue
								print" "								
							when "X" then #disparo correcto
								print "#{$tab1[i][j]}".red
								print" "
							when "P" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :blue)
								print" "	
							when "I" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :green)
								print" "	
							when "B" then
								print "#{$tab1[i][j]}".colorize(:$color => :black, :background => :yellow)
								print" "	
							when "T" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :red)									
								print" "
							else
								print "#{$tab1[i][j]} "															
						end		
					end
				puts "|" #Caracter Final
			end
		print "   "
		for j in (0..9) do 
		print "+---"
		end
		puts "+"
	end

	def printTab2 #Imprime tablero 2 con valores del arreglo
		newSp 4
		putColorAstLn 40, 6		
		puts"                TABLERO #{$player2}".yellow
		newSp 4
		putColorAstLn 40, 6			
		puts
		print "  "
			for $col in(0..9) do
				print "   #{$col+1}".white
			end
			puts
			for i in (0..9) do 
				print "   "
					for j in (0..9) do 
						print "+---"
					end
				puts "+"
				print "#{$l_may[i]}  ".white	#imprime arreglo de letras en mayusculas en $color BLANCO (el arreglo esta inicializado desde la posicion 0)	
					for j in (0..9) do 
						print "| "
						case $tab2[i][j] #Analiza el caracter almacenado en esa posicion para imprimir los $colores correctos.
							when "≈" then #agua
								print "#{$tab2[i][j]}".cyan
								print" "
							when "~" then #agua disparada
								print "#{$tab2[i][j]}".blue
								print" "								
							when "X" then #disparo correcto
								print "#{$tab2[i][j]}".red
								print" "
							when "P" then
								print "#{$tab2[i][j]}".colorize(:$color => :light_white, :background => :blue)
								print" "	
							when "I" then
								print "#{$tab2[i][j]}".colorize(:$color => :light_white, :background => :green)
								print" "	
							when "B" then
								print "#{$tab2[i][j]}".colorize(:$color => :black, :background => :yellow)
								print" "	
							when "T" then
								print "#{$tab2[i][j]}".colorize(:$color => :light_white, :background => :red)									
								print" "
							else
								print "#{$tab2[i][j]} "																					
						end		
					end
				puts "|" #Caracter Final
			end
		print "   "
		for j in (0..9) do 
		print "+---"
		end
		puts "+"
	end

	def resetTab1 #Lleno arreglo Tab1 con AGUA
		for i in 0..9 do
			$tab1[i] = []
		      for j in 0..9 do
		         $tab1[i][j] = "≈"
		      end
		end
	end

	def resetTab2 #Lleno arreglo Tab2 con AGUA
		for i in 0..9 do
			$tab2[i] = []
		      for j in 0..9 do
		         $tab2[i][j] = "≈"
		      end
		end 
	end
	
	def putComputerShips #colocar Barcos de manera aleatoria en el TAB2
		safe=TRUE

		#$colocar primero trirems en donde haya agua
		horv = rand(2) #horizontal or vertical, variable auxiliar para $colocar el trirem en una de esas 2 posiciones	
			if horv == 0 then #caso horizontal
				$row = rand(10) #generar coordenada aleatoria
				$col = rand(7) #$columna maxima horizontal es 7
				for i in 0..3 do
					$tab2[$row][$col+i] = "T"
				end
			else #caso vertical
				$row = rand(7) #generar coordenada aleatoria
				$col = rand(10) #$columna maxima horizontal es 7
				for i in 0..3 do
					$tab2[$row+i][$col] = "T"			
				end
			end

			#$colocar birrems
			for i in 1..$birrems do
				horv = rand(2) #horizontal or vertical, variable auxiliar 
				if horv == 0 then #caso horizontal
						loop do
						$row = rand(10) #generar coordenada aleatoria
						$col = rand(7) #$columna maxima horizontal es 8			
							if $tab2[$row][$col] == "≈" && $tab2[$row][$col+1] == "≈" && $tab2[$row][$col+2] == "≈"
								for i in 0..2 do
								$tab2[$row][$col+i] = "B"
								flag = TRUE
								end
							end	
						break if flag
						end
				else #caso vertical
					for i in 1..$birrems do
						loop do
						$row = rand(7) #generar coordenada aleatoria
						$col = rand(10) #$columna maxima horizontal es 8			
							if $tab2[$row][$col] == "≈" && $tab2[$row+1][$col] == "≈"
								for i in 0..2 do
								$tab2[$row+i][$col] = "B"
								flag = TRUE
								end
							end	
						break if flag
						end
					end				
				end
			end
		
			#$colocar incendiarias
			for i in 1..$incident do
				horv = rand(2) #horizontal or vertical, variable auxiliar 
				if horv == 0 then #caso horizontal
						loop do
						$row = rand(10) #generar coordenada aleatoria
						$col = rand(8) #$columna maxima horizontal es 8			
							if $tab2[$row][$col] == "≈" && $tab2[$row][$col+1] == "≈"
								for i in 0..1 do
								$tab2[$row][$col+i] = "I"
								flag = TRUE
								end
							end	
						break if flag
						end
				else #caso vertical
					for i in 1..$incident do
						loop do
						$row = rand(8) #generar coordenada aleatoria
						$col = rand(10) #$columna maxima horizontal es 8			
							if $tab2[$row][$col] == "≈" && $tab2[$row+1][$col] == "≈"
								for i in 0..1 do
								$tab2[$row+i][$col] = "I"
								flag = TRUE
								end
							end	
						break if flag
						end
					end				
				end
			end
			#$colocar tranships en donde haya agua
			i = 0
				loop do
					$row = rand(10)
					$col = rand(10)
						if $tab2[$row][$col] == "≈" then #si hay agua, $colocar barco
							$tab2[$row][$col] = "P"
							i = i + 1
						end
					break if (i == $tranships)
				end
	end
	
	def putRandomUserShips #colocar Barcos de manera aleatoria en el TAB1
		safe=TRUE

		#$colocar primero trirems en donde haya agua
		horv = rand(2) #horizontal or vertical, variable auxiliar para $colocar el trirem en una de esas 2 posiciones	
			if horv == 0 then #caso horizontal
				$row = rand(10) #generar coordenada aleatoria
				$col = rand(7) #$columna maxima horizontal es 7
				for i in 0..3 do
					$tab1[$row][$col+i] = "T"
				end
			else #caso vertical
				$row = rand(7) #generar coordenada aleatoria
				$col = rand(10) #$columna maxima horizontal es 7
				for i in 0..3 do
					$tab1[$row+i][$col] = "T"			
				end
			end

			#$colocar birrems
			for i in 1..$birrems do
				horv = rand(2) #horizontal or vertical, variable auxiliar 
				if horv == 0 then #caso horizontal
						loop do
						$row = rand(10) #generar coordenada aleatoria
						$col = rand(7) #$columna maxima horizontal es 8			
							if $tab1[$row][$col] == "≈" && $tab1[$row][$col+1] == "≈" && $tab1[$row][$col+2] == "≈"
								for i in 0..2 do
								$tab1[$row][$col+i] = "B"
								flag = TRUE
								end
							end	
						break if flag
						end
				else #caso vertical
					for i in 1..$birrems do
						loop do
						$row = rand(7) #generar coordenada aleatoria
						$col = rand(10) #$columna maxima horizontal es 8			
							if $tab1[$row][$col] == "≈" && $tab1[$row+1][$col] == "≈"
								for i in 0..2 do
								$tab1[$row+i][$col] = "B"
								flag = TRUE
								end
							end	
						break if flag
						end
					end				
				end
			end
		
			#$colocar incendiarias
			for i in 1..$incident do
				horv = rand(2) #horizontal or vertical, variable auxiliar 
				if horv == 0 then #caso horizontal
						loop do
						$row = rand(10) #generar coordenada aleatoria
						$col = rand(8) #$columna maxima horizontal es 8			
							if $tab1[$row][$col] == "≈" && $tab1[$row][$col+1] == "≈"
								for i in 0..1 do
								$tab1[$row][$col+i] = "I"
								flag = TRUE
								end
							end	
						break if flag
						end
				else #caso vertical
					for i in 1..$incident do
						loop do
						$row = rand(8) #generar coordenada aleatoria
						$col = rand(10) #$columna maxima horizontal es 8			
							if $tab1[$row][$col] == "≈" && $tab1[$row+1][$col] == "≈"
								for i in 0..1 do
								$tab1[$row+i][$col] = "I"
								flag = TRUE
								end
							end	
						break if flag
						end
					end				
				end
			end
			#$colocar tranships en donde haya agua
			i = 0
				loop do
					$row = rand(10)
					$col = rand(10)
						if $tab1[$row][$col] == "≈" then #si hay agua, $colocar barco
							$tab1[$row][$col] = "P"
							i = i + 1
						end
					break if (i == $tranships)
				end
	end
	
	def printTabs( space ) #Imprime Tab1 y Tab2 con una distancia space
		print "  "
			for $col in(0..9) do
				print "   #{$col+1}".white
			end
		newSp(space)
		
		print "   "
			for $col in(0..9) do
				print "   #{$col+1}".white
			end
		puts
		
		
		for i in (0..9) do 
				print "   "
					for j in (0..9) do 
						print "+---"
					end
				print "+"
				newSp(space)
				print "   "
					for j in (0..9) do 
						print "+---"
					end
				puts "+"
				print "#{$l_may[i]}  ".white	#imprime arreglo de letras en mayusculas en $color BLANCO (el arreglo esta inicializado desde la posicion 0)	
					for j in (0..9) do 
						print "| "
						case $tab2[i][j] #Analiza el caracter almacenado en esa posicion para imprimir los $colores correctos.
							when "≈" then #agua
								print "#{$tab2[i][j]}".cyan
								print" "
							when "~" then #agua disparada
								print "#{$tab2[i][j]}".blue
								print" "								
							when "X" then #disparo correcto
								print "#{$tab2[i][j]}".red
								print" "
							when "P" then
								print "#{$tab2[i][j]}".colorize(:$color => :light_white, :background => :blue)
								print" "	
							when "I" then
								print "#{$tab2[i][j]}".colorize(:$color => :light_white, :background => :green)
								print" "	
							when "B" then
								print "#{$tab2[i][j]}".colorize(:$color => :black, :background => :yellow)
								print" "	
							when "T" then
								print "#{$tab2[i][j]}".colorize(:$color => :light_white, :background => :red)									
								print" "
							else
								print "#{$tab2[i][j]} "																					
						end		
					end
				print "|" #Caracter Final
				newSp(space)
				print "#{$l_may[i]}  ".white	#imprime arreglo de letras en mayusculas en $color BLANCO (el arreglo esta inicializado desde la posicion 0)	
					for j in (0..9) do 
						print "| "
						case $tab1[i][j] #Analiza el caracter almacenado en esa posicion para imprimir los $colores correctos.
							when "≈" then #agua
								print "#{$tab1[i][j]}".cyan
								print" "
							when "~" then #agua disparada
								print "#{$tab1[i][j]}".blue
								print" "								
							when "X" then #disparo correcto
								print "#{$tab1[i][j]}".red
								print" "
							when "P" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :blue)
								print" "	
							when "I" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :green)
								print" "	
							when "B" then
								print "#{$tab1[i][j]}".colorize(:$color => :black, :background => :yellow)
								print" "	
							when "T" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :red)									
								print" "
							else
								print "#{$tab1[i][j]} "														
						end		
					end
				puts "|" #Caracter Final
		end
		
		print "   "
		for j in (0..9) do 
			print "+---"
		end
		print "+"
		newSp(space)
		print "   "
		for j in (0..9) do 
			print "+---"
		end
		puts "+"
	end	
	
	def printTabsUserView( space ) #Imprime Tab1 y Tab2 con una distancia space
		print "  "
			for $col in(0..9) do
				print "   #{$col+1}".white
			end
		newSp(space)
		
		print "   "
			for $col in(0..9) do
				print "   #{$col+1}".white
			end
		puts
		
		
		for i in (0..9) do 
				print "   "
					for j in (0..9) do 
						print "+---"
					end
				print "+"
				newSp(space)
				print "   "
					for j in (0..9) do 
						print "+---"
					end
				puts "+"
				print "#{$l_may[i]}  ".white	#imprime arreglo de letras en mayusculas en $color BLANCO (el arreglo esta inicializado desde la posicion 0)	
					for j in (0..9) do 
						print "| "
						case $tab2[i][j] #Analiza el caracter almacenado en esa posicion para imprimir los $colores correctos.
							when "≈" then #agua
								print "≈".cyan
								print" "
							when "X" then #disparo correcto
								print "X".red
								print" "
							when "0" then #disparo Incorrecto
								print "0".yellow
								print" "	
							when "P", "I", "B", "T" then
								print "≈".cyan
								print" "	
							else
								print "#{$tab2[i][j]} "																					
						end		
					end
				print "|" #Caracter Final
				newSp(space)
				print "#{$l_may[i]}  ".white	#imprime arreglo de letras en mayusculas en $color BLANCO (el arreglo esta inicializado desde la posicion 0)	
					for j in (0..9) do 
						print "| "
						case $tab1[i][j] #Analiza el caracter almacenado en esa posicion para imprimir los $colores correctos.
							when "≈" then #agua
								print "#{$tab1[i][j]}".cyan
								print" "
							when "0" then #Disparo Incorrecto
								print "#{$tab1[i][j]}".yellow
								print" "								
							when "X" then #disparo correcto
								print "#{$tab1[i][j]}".red
								print" "
							when "P" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :blue)
								print" "	
							when "I" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :green)
								print" "	
							when "B" then
								print "#{$tab1[i][j]}".colorize(:$color => :black, :background => :yellow)
								print" "	
							when "T" then
								print "#{$tab1[i][j]}".colorize(:$color => :light_white, :background => :red)									
								print" "
							else
								print "#{$tab1[i][j]} "														
						end		
					end
				puts "|" #Caracter Final
		end
		
		print "   "
		for j in (0..9) do 
			print "+---"
		end
		print "+"
		newSp(space)
		print "   "
		for j in (0..9) do 
			print "+---"
		end
		puts "+"
	end	
	
	def convertCoor2point ( char ) #convierte coordenada a puntos A2 -> 1
		$row = 0.to_i
		for i in 0..27
			if $l_min[i] == char || $l_may[i] == char then
				$row =  i+1
			end
		end
		return $row
	end
	
	def askCoordinates ( rowmax, colmax ) #pregunta y setea coordenadas a variable global
				loop do
					print "Introduzca coordenada: "
					point = gets.chomp.to_s #leer point
					puts
					$row = convertCoor2point point[0]
					$col = point[1].to_i
					ten = FALSE
						if point[1] == "1" && point[2] == "0" then
							$row = convertCoor2point point[0]
							$col = 10
							ten = TRUE
						end
						if point == "s" then
							exit
						end	
						if ($row < 1 || $row > rowmax || $col < 1 || $col > colmax + 1 || ten ) then
							puts "Coordenada Incorrecta".red
							puts "HINT: Las coordenadas deben de la siguiente forma: a1".yellow
							puts
						end	
					break if ($row >= 1 && $row <= rowmax && $col >= 1 && $col <= colmax)
				end
	end	
	
	def askHorv( boatname ) #prints de pregunta #TODO CASES
		puts "Bote Colocar: #{boatname}".white
		puts "BOTES RESTANTES:"
		puts
		puts "#{$triremsstr} :    #{$triremscount} "
		puts "#{$birremsstr} :      #{$birremscount}"
		puts "#{$incidentstr} :        #{$incidentcount}"
		puts "#{$transhipsstr} :          #{$transhipscount}"
		puts
		puts "TOTAL BARCOS RESTANTES : #{$shipscount}"
		puts
		if boatname != "PEÑERO" then
			print "Desea colocarlo en posicion Horizontal (h) o Vertical (v)? "	
		end
	end
	

	def updateShipCount
		$shipscount = $shipscount - 1
	end
	def setupMyShips #Colocar Barcos en Tab1 (tabla de usuario)
		safe=TRUE #bandera
		
		clear
		printTab1
		
		#colocar Trirems
		askHorv( "TRIREME" )
		horv = gets.chomp #horizontal or vertical, variable auxiliar para $colocar el trirem en una de esas 2 posiciones	
			
			if horv == "h" then #caso horizontal
				askCoordinates 10,7
				for i in 0..3 do #llenar coordenada deseada con TIRREM Horizontal
					$tab1[$row-1][$col+i-1] = "T"
					if i == 0 then
						$triremscount = $triremscount - 1
						updateShipCount
					end	
				end
			end
			
			if horv == "v" then #caso vertical
				askCoordinates 7,10
				for i in 0..3 do #llenar coordenada deseada con TIRREM Vertical
					$tab1[$row+i-1][$col-1] = "T"
					if i == 0 then
						$triremscount = $triremscount - 1
						updateShipCount
					end						
				end
			end
			

			printTab1
			
			#colocar birrems
			for i in 1..$birrems do #$colocar tantos BIRREMS haya en la variable global
				clear
				printTab1
				askHorv( "BIRREME" )	
				
				horv = gets.chomp #horizontal or vertical, variable auxiliar para $colocar el trirem en una de esas 2 posiciones	
				
					if horv == "h" then #caso horizontal
						loop do
							askCoordinates 10,8
								if $tab1[$row-1][$col-1] == "≈" && $tab1[$row-1][$col] == "≈" && $tab1[$row-1][$col+1] == "≈" then
									for i in 0..2 do
										$tab1[$row-1][$col+i-1] = "B"
											if i == 0 then
												$birremscount = $birremscount - 1
												updateShipCount
											end											
										flag = TRUE
									end
								else
									puts"Casilla ocupada, vuelva a intentar".red
								end	
							break if flag
						end
					else #caso vertical
							loop do
									askCoordinates 8,10
									if $tab1[$row-1][$col-1] == "≈" && $tab1[$row][$col-1] == "≈" && $tab1[$row+1][$col-1] == "≈" then
										for i in 0..2 do
											$tab1[$row+i-1][$col-1] = "B"
												if i == 0 then
													$birremscount = $birremscount - 1
													updateShipCount
												end											
											flag = TRUE
										end
									else
										puts"Casilla ocupada, vuelva a intentar"
									end	
								break if flag
							end
					end

			end

			#colocar incendiarias
			for i in 1..$incident do #$colocar tantas incendiarias como haya en la variable global
				clear
				printTab1
				askHorv( "INCIDENTARIA" )	
				
				horv = gets.chomp #horizontal or vertical, variable auxiliar para $colocar el trirem en una de esas 2 posiciones
				
				if horv == "h" then #caso horizontal
					loop do
						askCoordinates 10,9
								if $tab1[$row-1][$col-1] == "≈" && $tab1[$row-1][$col] == "≈"  then #doble condicion
									for i in 0..1 do
										$tab1[$row-1][$col+i-1] = "I"
											if i == 0 then
												$incidentcount = $incidentcount - 1
												updateShipCount
											end										
										flag = TRUE
									end
								else
									puts"Casilla ocupada, vuelva a intentar".red
								end	
					break if flag
					end
				
				else #caso vertical
					for i in 1..$incident do
						loop do
							askCoordinates 9,10
								
							if $tab1[$row-1][$col-1] == "≈" && $tab1[$row][$col-1] == "≈" then
								for i in 0..1 do
									$tab1[$row+i-1][$col-1] = "I"
											if i == 0 then
												$incidentcount = $incidentcount - 1
												updateShipCount
											end	
									flag = TRUE
								end
							else
								puts"Casilla ocupada, vuelva a intentar".red
							end	
						break if flag
						end
					end				
				end
			end

			#colocar tranships 
			i = 0
				loop do
					clear
					printTab1
					askHorv( "PEÑERO" )
						askCoordinates 10,10
								
						if $tab1[$row-1][$col-1] == "≈" then #si hay agua, $colocar barco
							$tab1[$row-1][$col-1] = "P"
							 $transhipscount = $transhipscount - 1
							 updateShipCount
							i = i + 1
						else
							puts"Casilla ocupada, vuelva a intentar".red
						end	
					break if (i == $tranships)
				end
	end
	
	def shotToTab2
		loop do 
			askCoordinates(10,10)
	            row = $row - 1
	            col = $col - 1
	            
	            if $tab2[row][col] == "0" || $tab2[row][col] == "X" then
	            	puts "Epa, ya habias disparado a esa casilla".yellow
	            end		            
		            if $tab2[row][col] == "≈" then #disparo fallido
		                $tab2[row][col] = "0"
		                puts "Disparo Fallido".yellow
		                flag = TRUE
		            end
	            if $tab2[row][col] == "P" || $tab2[row][col] == "I" || $tab2[row][col] == "B" || $tab2[row][col] == "T" then #eeeso le diste!
	                $tab2[row][col] = "X"
	               	clear
	               	printTabsUserView(10)
					printInfo
	                puts "Le diste a uno de sus barcos!".red
	                puts "Tienes un tiro mas de ñapa!".yellow
	                shotToTab2 #me encanta esta recursividad jajajaja
	                flag = TRUE
	            end
		break if flag
		end
	end
	
	def refreshCounts
		$countOnTab1 = 0
		$countOnTab2 = 0
		for i in 0..9 do
		      for j in 0..9 do
			        if $tab1[i][j] == "X" then
			         	$countOnTab1 = $countOnTab1 + 1
			        end
			        if $tab2[i][j] == "X" then
			         	$countOnTab2 = $countOnTab2 + 1
			        end	
		      end
		end
	end 
	
	def printInfo
		refreshCounts
		puts "Count on tab1 #{$countOnTab1}".white
		puts "Count on tab2 #{$countOnTab2}".white
	end
	
		def isGameOverOnTab1? #comprueba si el juego se acabo en la tab 1
		if $tranships + $incident*2 + $birrems*3 + $trirems*4 == $countOnTab1 then
			return TRUE
		else
			return FALSE
		end	
	end
	
	def isGameOverOnTab2? #comprueba si el juego se acabo en la tab 1
		if $tranships + $incident*2 + $birrems*3 + $trirems*4 == $countOnTab2 then
			return TRUE
		else
			return FALSE
		end	
	end
#Llenar tabs con agua
	resetTab1
	resetTab2