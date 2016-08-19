def setup

	loop do
		print "Introduzca cantidad de barcos (de 4 a 10) (0 para salir): "
		$ships = gets.chomp.to_i
		$shipscount = $ships
			if $ships == 0
				exit
			end
		break if $ships >= 4 && $ships <= 10	
	end
		#llenar cantidad de barcos
		if $ships == 5
			$transhipscount = $tranships = 2
		end	
		if $ships == 6
			$tranships = $transhipscount = $incident = $incidentcount = 2
		end	
		if $ships == 7
			$tranships = $transhipscount = $incident = $incidentcount = $birrems = $birremscount = 2
		end		
		if $ships == 8
			$transhipscount = $tranships = 3
			$incident = $incidentcount = $birrems = $birremscount = 2
		end	
		if $ships == 9
			$tranships = $transhipscount = $incident = $incidentcount = 3
			$birrems = $birremscount = 2
		end	
		if $ships == 10
			$transhipscount = $tranships = 4
			$incident = $incidentcount = 3
			$birrems = $birremscount = 2
		end	

end