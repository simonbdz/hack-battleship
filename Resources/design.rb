
def newLn( n ) #Imprime N lineas
	for i in (1..n) do
		puts
	end
end

def newSp( n ) #Imprime N espacios
	for i in (1..n) do
		print " "
	end
end

def newSpLn( n ) #Imprime N espacios y un salto de linea
	for i in (1..n) do
		puts ""
	end
end

def putAst( n ) #Imprime N Asteriscos 
	for i in (1..n) do
		print "*"
	end
end

def putAstLn( n ) #Imprime N Asteriscos y un salto de linea
	for i in (1..n) do
		print "*"
	end
	puts
end

def putSlash( n ) #Imprime N Asteriscos 
	for i in (1..n) do
		print "/"
	end
end

def putBackSlash( n ) #Imprime N Asteriscos 
	for i in (1..n) do
		print "\\"
	end
end

def putColorSlash( n, color ) #Imprime N Asteriscos de 10 colores posibles
	case color 
		when 1 then
		for i in (1..n) do
			print "/".white
		end
		when 2 then
		for i in (1..n) do
			print "/".cyan
		end
		when 3 then
		for i in (1..n) do
			print "/".blue
		end
		
		when 4 then
		for i in (1..n) do
			print "/".green
		end
		when 5 then
		for i in (1..n) do
			print "/".red
		end
		when 6 then
		for i in (1..n) do
			print "/".yellow
		end
	end	
end

def putColorBackSlash( n, color ) #Imprime N Asteriscos de 10 colores posibles
	case color 
		when 1 then
		for i in (1..n) do
			print "\\".white
		end
		when 2 then
		for i in (1..n) do
			print "\\".cyan
		end
		when 3 then
		for i in (1..n) do
			print "\\".blue
		end
		
		when 4 then
		for i in (1..n) do
			print "\\".green
		end
		when 5 then
		for i in (1..n) do
			print "\\".red
		end
		when 6 then
		for i in (1..n) do
			print "\\".yellow
		end
	end	
end


def putColorAst( n, color ) #Imprime N Asteriscos de 10 colores posibles
	case color 
		when 1 then
		for i in (1..n) do
			print "*".white
		end
		when 2 then
		for i in (1..n) do
			print "*".cyan
		end
		when 3 then
		for i in (1..n) do
			print "*".blue
		end
		
		when 4 then
		for i in (1..n) do
			print "*".green
		end
		when 5 then
		for i in (1..n) do
			print "*".red
		end
		when 6 then
		for i in (1..n) do
			print "*".yellow
		end
	end	
end

def putColorAstLn( n, color ) #Imprime N Asteriscos de 10 colores posibles
	case color 
		when 1 then
		for i in (1..n) do
			print "*".white
		end
		when 2 then
		for i in (1..n) do
			print "*".cyan
		end
		when 3 then
		for i in (1..n) do
			print "*".blue
		end
		
		when 4 then
		for i in (1..n) do
			print "*".green
		end
		when 5 then
		for i in (1..n) do
			print "*".red
		end
		when 6 then
		for i in (1..n) do
			print "*".yellow
		end
	end	
	puts
end

def randomArt( lineas )
	c = 0	
		for i in 1..lineas do
			r = rand(3)+1
			case r
				when 1 then
					putColorAst( 1, rand(6) + 1 )
				when 2 then
					putColorSlash( 1, rand(6) + 1 )
				when 3 then
					putColorBackSlash( 1, rand(6) + 1 )
			end
		end	
end		

def clear
	system("clear")
end

# Lee la tecla pulsada desde el terminal sin presionar Enter
def get_keypressed
	system("stty raw -echo")
	t = STDIN.getc
	system("stty -raw echo")
	return t
end

def waitForInput
		print "Presione cualquier tecla para continuar ".white
		print "(s para salir): ".yellow
		t = get_keypressed
		if t == "s" then
			exit
		end
end