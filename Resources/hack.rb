def printHackLogo #Muestra Logo de Hack Tricolor	
	puts"  ad888                                                        888ba    ".yellow
	puts"  88   88        88         db         ,ad8888ba,   88      a8P   88    ".yellow
	puts"  88   88        88        d88b       d8        8b  88    ,88     88    ".yellow
	puts"  88   88        88       d8  8b     d8             88  ,88       88    ".yellow
	puts" ,8P   88aaaaaaaa88      d8    8b    88             88,d88        Y8,   ".blue
	puts"88(    88aaaaaaaa88     d8YaaaaY8b   88             8888;88,       )88  ".blue
	puts" '8b   88        88    d8YaaaaaaY8b  Y8,            88P   Y8b     d8    ".blue
	puts"  88   88        88   d8          8b  Y8a.    .a8P  88      88,   88    ".blue
	puts"  88   88        88  d8            8b    Y8888Y     88       Y8b  88    ".red
	puts"  88,                                                            ,88    ".red
	puts"   Y888                                                        888P     ".red
	puts"          {Academia de formación intensiva de programadores}".white
end

def animateHackLogo( r,t ) #Muestra Logo de Hack Animado Cambiando, r= Repeticiones t=Tiempo medido en segundos que duran las iteraciones
	system("clear")
	for rep in 0..r
		for i in 1..6
			case i
			when 1 then
				puts"  ad888                                                        888ba    ".yellow
				puts"  88   88        88         db         ,ad8888ba,   88      a8P   88    ".yellow
				puts"  88   88        88        d88b       d8        8b  88    ,88     88    ".yellow
				puts"  88   88        88       d8  8b     d8             88  ,88       88    ".yellow
				puts" ,8P   88aaaaaaaa88      d8    8b    88             88,d88        Y8,   ".blue
				puts"88(    88aaaaaaaa88     d8YaaaaY8b   88             8888;88,       )88  ".blue
				puts" '8b   88        88    d8YaaaaaaY8b  Y8,            88P   Y8b     d8    ".blue
				puts"  88   88        88   d8          8b  Y8a.    .a8P  88      88,   88    ".blue
				puts"  88   88        88  d8            8b    Y8888Y     88       Y8b  88    ".red
				puts"  88,                                                            ,88    ".red
				puts"   Y888                                                        888P     ".red
				puts"          {Academia de formación intensiva de programadores}".white
				puts
			when 2 then
				puts"  ad888                                                        888ba    ".yellow
				puts"  88   88        88         db         ,ad8888ba,   88      a8P   88    ".yellow
				puts"  88   88        88        d88b       d8        8b  88    ,88     88    ".yellow
				puts"  88   88        88       d8  8b     d8             88  ,88       88    ".yellow
				puts" ,8P   88aaaaaaaa88      d8    8b    88             88,d88        Y8,   ".yellow
				puts"88(    88aaaaaaaa88     d8YaaaaY8b   88             8888;88,       )88  ".yellow
				puts" '8b   88        88    d8YaaaaaaY8b  Y8,            88P   Y8b     d8    ".yellow
				puts"  88   88        88   d8          8b  Y8a.    .a8P  88      88,   88    ".yellow
				puts"  88   88        88  d8            8b    Y8888Y     88       Y8b  88    ".yellow
				puts"  88,                                                            ,88    ".yellow
				puts"   Y888                                                        888P     ".yellow
				puts"          {Academia de formación intensiva de programadores}".white
				puts	
			when 3 then
				puts"  ad888                                                        888ba    ".blue
				puts"  88   88        88         db         ,ad8888ba,   88      a8P   88    ".blue
				puts"  88   88        88        d88b       d8        8b  88    ,88     88    ".blue
				puts"  88   88        88       d8  8b     d8             88  ,88       88    ".blue
				puts" ,8P   88aaaaaaaa88      d8    8b    88             88,d88        Y8,   ".blue
				puts"88(    88aaaaaaaa88     d8YaaaaY8b   88             8888;88,       )88  ".blue
				puts" '8b   88        88    d8YaaaaaaY8b  Y8,            88P   Y8b     d8    ".blue
				puts"  88   88        88   d8          8b  Y8a.    .a8P  88      88,   88    ".blue
				puts"  88   88        88  d8            8b    Y8888Y     88       Y8b  88    ".blue
				puts"  88,                                                            ,88    ".blue
				puts"   Y888                                                        888P     ".blue
				puts"          {Academia de formación intensiva de programadores}".white
				puts
			when 4 then
				puts"  ad888                                                        888ba    ".red
				puts"  88   88        88         db         ,ad8888ba,   88      a8P   88    ".red
				puts"  88   88        88        d88b       d8        8b  88    ,88     88    ".red
				puts"  88   88        88       d8  8b     d8             88  ,88       88    ".red
				puts" ,8P   88aaaaaaaa88      d8    8b    88             88,d88        Y8,   ".red
				puts"88(    88aaaaaaaa88     d8YaaaaY8b   88             8888;88,       )88  ".red
				puts" '8b   88        88    d8YaaaaaaY8b  Y8,            88P   Y8b     d8    ".red
				puts"  88   88        88   d8          8b  Y8a.    .a8P  88      88,   88    ".red
				puts"  88   88        88  d8            8b    Y8888Y     88       Y8b  88    ".red
				puts"  88,                                                            ,88    ".red
				puts"   Y888                                                        888P     ".red
				puts"          {Academia de formación intensiva de programadores}".white
				puts
			when 5 then
				puts"  ad888                                                        888ba    ".cyan
				puts"  88   88        88         db         ,ad8888ba,   88      a8P   88    ".cyan
				puts"  88   88        88        d88b       d8        8b  88    ,88     88    ".cyan
				puts"  88   88        88       d8  8b     d8             88  ,88       88    ".cyan
				puts" ,8P   88aaaaaaaa88      d8    8b    88             88,d88        Y8,   ".cyan
				puts"88(    88aaaaaaaa88     d8YaaaaY8b   88             8888;88,       )88  ".cyan
				puts" '8b   88        88    d8YaaaaaaY8b  Y8,            88P   Y8b     d8    ".cyan
				puts"  88   88        88   d8          8b  Y8a.    .a8P  88      88,   88    ".cyan
				puts"  88   88        88  d8            8b    Y8888Y     88       Y8b  88    ".cyan
				puts"  88,                                                            ,88    ".cyan
				puts"   Y888                                                        888P     ".cyan
				puts"          {Academia de formación intensiva de programadores}".white
				puts
			when 6 then
				puts"  ad888                                                        888ba    ".light_green
				puts"  88   88        88         db         ,ad8888ba,   88      a8P   88    ".light_green
				puts"  88   88        88        d88b       d8        8b  88    ,88     88    ".light_green
				puts"  88   88        88       d8  8b     d8             88  ,88       88    ".light_green
				puts" ,8P   88aaaaaaaa88      d8    8b    88             88,d88        Y8,   ".light_green
				puts"88(    88aaaaaaaa88     d8YaaaaY8b   88             8888;88,       )88  ".light_green
				puts" '8b   88        88    d8YaaaaaaY8b  Y8,            88P   Y8b     d8    ".light_green
				puts"  88   88        88   d8          8b  Y8a.    .a8P  88      88,   88    ".light_green
				puts"  88   88        88  d8            8b    Y8888Y     88       Y8b  88    ".light_green
				puts"  88,                                                            ,88    ".light_green
				puts"   Y888                                                        888P     ".light_green
				puts"          {Academia de formación intensiva de programadores}".white
				puts
			end
		sleep t
		system("clear")
		end
	end#recibe por parametros int de numero de repeticiones y float de sleep
end