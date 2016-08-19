require_relative "Resources/design" #libreria para ayudar al dise;o
require_relative "Resources/globalvariables" #variables globales
require_relative "Resources/tablero" #funciones del tablero
require_relative "Resources/simonlib" #libreria de funciones adicionales
require_relative "Resources/battleintro" #Graficos de la batalla
require_relative "Resources/setup" #Librería de funciones para configuración de variables globales
require_relative "Resources/hack" #Graficos de la academia
require_relative "Resources/menu" #menu de opciones 
require_relative "Resources/misc" #Manejador de archivos
require_relative "Resources/play" #Acciones e interacciones del juego
require_relative "Resources/NativeIA" #Inteligencia artificial nativa
require_relative "Resources/RandomComputer" #Movimiento random, computer
require_relative "Resources/TensorFlowBridge" #Interfaz de comunicación de backend python de TensorFlow



=begin
Reglas generales del juego
	El jugador cuenta con dos tableros cuadriculados de 10x10 casillas: el primero representa la zona de alta mar donde el pescador ubicó sus peñeros. 
	El segundo representa la zona donde los peñeros del enemigo (la computadora) se encuentran ubicados secretamente, por lo que es en este tablero donde 
	el jugador efectuará sus ataques, intentando adivinar la ubicación de los peñeros enemigos.

Como reglas del juego Riña de Pescadores, se tienen las siguientes:
La cantidad de barcos que tendrá cada jugador debe ser solicitada al usuario al iniciar el juego, y oscilará entre 4 y 10 barcos. 
Estos barcos deben ser ubicados en el tablero por el usuario, indicando la coordenada de la posición para cada barco.
El juego permitirá al usuario jugar contra la computadora. Esto es, la computadora ubicará sus peñeros y realizará sus ataques contra el jugador, aleatoriamente.
Cada peñero ocupará una sola casilla del tablero, por lo que cada tiro acertado implica el hundimiento del peñero impactado.
El programa debe indicar, tanto por mensaje como visualmente en el tablero correspondiente, el resultado de cada turno jugado, 
permitiendo saber al pescador si acertó un ataque (hundiendo el peñero) o si el disparo cayó en alta mar (en el agua).

Cada vez que un pescador acierta un ataque, podrá efectuar un segundo ataque consecutivo.

No es posible jugar en una casilla en la que ya se ha realizado alguna jugada.
El usuario siempre inicia la partida efectuando el primer ataque, por lo que si en su última jugada hunde el último barco de su oponente, 
esta tiene derecho a un último disparo que también le permita terminar de hundir la flota contraria, lo que supondría un empate.
Gana el pescador que logre hundir todos los peñeros del oponente.

	En todo momento, el pescador debe estar informado de cuantos peñeros ha hundido hasta el momento, 
	cuántos de sus peñeros han sido hundidos y a qué pescador le corresponde jugar (de quién es el turno), 
	así como quién ha resultado ganador, una vez sean hundidos todos los peñeros de alguno de los pescadores.

=end

#Intro 
def intro
	putColorAstLn( 70, 1 ) 
	printSBColorLogo(1)
	putColorAstLn( 70, 1 )
	puts
	printHackLogo
	puts
	putColorAstLn( 70, 1 )
	printTitle1
	putColorAstLn( 70, 1 )
	waitForInput
	clear
end

def setupAll
	printTitle2
	newLn(2)
	setup
	clear
	putComputerShips
end

def askUserShips
	puts "Desea colocar sus barcos manualmente? s/n"
	ans = gets.chomp
	if ans == "s" || ans == "n" then
		if ans == "s" then
			setupMyShips
		else
			putRandomUserShips
		end
	else
		askUserShips
	end
end	
	
def mainMenu
	printShip3
	putAstLn(35)
		puts "1.- Jugar Versus maquina"
		puts "2.- Ver Demo (maquina vs maquina)"
	putAstLn(35)	
		case gets.chomp.to_i
			when 1 then
				setupAll
				askUserShips
				puts "Desea ver el historial de sus jugadas? s/n"
					ans = gets.chomp
						if ans == "s" || ans == "n" then
							if ans == "s" then
								playPlayerVsRandomComputer(TRUE)
							else 							
								playPlayerVsRandomComputer(FALSE)
							end
						else
							mainMenu
						end	
			when 2 then
				puts "Desea ver el historial de sus jugadas? s/n"
					ans = gets.chomp
						if ans == "s" || ans == "n" then
							if ans == "s" then
								setupAll
								playRandomComputerVsRandomComputer(TRUE)
							else 
								setupAll
								playRandomComputerVsRandomComputer(FALSE)
							end
						else
							mainMenu
						end		
			else
				exit									
		end
end		

intro	
mainMenu

