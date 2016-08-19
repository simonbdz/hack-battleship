require_relative "design"
require 'colorize'


def printShip1
    puts"                       _".white
    puts"                      ||\\".white
    puts"                      || \\".white
    puts"                      ||  \\".white
    puts"                      ||   \\".white
    puts"                      ||    \\".white
    puts"                      ||     \\".white
    puts"                      ||      \\".white
    puts"                      ||       \\".white
    puts"                      ||        \\".white
    puts"                      ||         \\".white
    puts"                      ||          \\".white
    puts"                      ||           \\".white
    puts"                      ||            \\".white
    puts"                      ||   ___---~~~`".white
    puts"                      ||~~~ ____....------...".white
    puts"                ___...||~~~_____________    ~~-_".white
    puts"         __..-~~      ||   \\____________\\       =".white
    puts"     _.-~             `'    \\            \\       =".white
    puts"  .-~__                      ~~~~~~~~~~~'   ____.=".white
    puts"   \\   ~~~~~------......_______....-----~~~~     |".white
    puts"    `\\                                          /'".white
    puts"      `\\__                                     /".white
    puts"          ~~~~~------......_______....-----~~~'  ".white
end

def printShip2
    puts"                                   _o".light_white
    puts"                                  .#S?\\".light_white
    puts"                                .'##$ ?$\\".light_white
    puts"                              .'.###$  ?$$\\".light_white
    puts"                            .' .####$   ?$$$\\".light_white
    puts"                          .'  +#####$   `$$$$$\\".light_white
    puts"                        .'   d######$    `$$$$$$\\".light_white
    puts"                      .'   .########$     ?$$$$$$$\\".light_white
    puts"                    .'    .#########$      ?$$$$$$$$\\".light_white
    puts"                  .'     ,##########$       ?$$$$$$$$$\\".light_white
    puts"                .'      +###########$       `?$$$$$$$$$$\\".light_white
    puts"             ..'      .;############$        `$$$$$$$$$$$$\\".light_white
    puts"             |'       ;    ````""""?$         ?$$$$??""""$$$\\".light_white
    puts"             |_/_____;._______._____$_________)?;__________?;X\\___.-.".light_white
    puts"         .light_white    /'_____;_|______,|ooooo$oo|o,,,,/..|..___      |`'+\\.\\.'".light_white
    puts"          .'||  ,ooooo|ooooodS|SSSSSSSS|SSS/'SSS|SSSSSSSSSSS|SSSS|/".light_white
    puts"      .  .; |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/'".light_white
    puts".,;.;';`'(`;|',.;'.'.,,,+','+.,'+,.+,'+..^+,','+.,',.';.'.,+'`;'.';,:'';,:.'".cyan
    puts";'.';,:'.,;.;';`'(`;|',.;'.'.,,,+','+.,'+,.+,'+..^+,','+.,',.';.'.,+'`.';,:'".cyan
end 


def printShip3
    puts"                                     # #  ( )".yellow
    puts"                                  ___#_#___|__".yellow
    puts"                              _  |____________|  _".yellow
    puts"                       _=====| | |            | | |==== _".yellow
    puts"                 =====| |.---------------------------. | |====".yellow
    puts"   <--------------------'   .  .  .  .  .  .  .  .   '--------------/".yellow
    puts"     \\                                               USS {HACK}    /".yellow
    puts"      \\___________________________________________________________/".yellow
    puts"  wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww".cyan
    puts"wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww".cyan
    puts"   wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww ".cyan
end

def printShip4
    puts"                                     |__".red
    puts"                                     |\\/".red
    puts"                                     ---".red
    puts"                                     / | [".red
    puts"                              !      | |||".red
    puts"                            _/|     _/|-++'".red
    puts"                        +  +--|    |--|--|_ |-".red
    puts"                     { /|__|  |/\\__|  |--- |||__/".red
    puts"                    +---------------___[}-_===_.'____                 /\\".red
    puts"                ____`-' ||___-{]_| _[}-  |     |_[___\\==--            \\/   _".red
    puts" __..._____--==/___]_|__|_____________________________[___\\==--____,------' .7".red
    puts"|                                                                    {HACK} /".red
    puts" \\_________________________________________________________________________|".red
    puts"  wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww".cyan
    puts"wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww".cyan
    puts"   wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww ".cyan
    puts
end

def printTitle1
    puts" _______    ______   ________  ________  __        ________ ".light_white
    puts"/       \\  /      \\ /        |/        |/  |      /        | ".light_white    
    puts"$$$$$$$  |/$$$$$$  |$$$$$$$$/ $$$$$$$$/ $$ |      $$$$$$$$/   ".light_white  
    puts"$$ |__$$ |$$ |__$$ |   $$ |      $$ |   $$ |      $$ |__       ".light_white
    puts"$$    $$< $$    $$ |   $$ |      $$ |   $$ |      $$    |       ".light_white
    puts"$$$$$$$  |$$$$$$$$ |   $$ |      $$ |   $$ |      $$$$$/         ".light_white
    puts"$$ |__$$ |$$ |  $$ |   $$ |      $$ |   $$ |_____ $$ |_____       ".light_white
    puts"$$    $$/ $$ |  $$ |   $$ |      $$ |   $$       |$$       |      ".light_white
    puts"$$$$$$$/  $$/   $$/    $$/       $$/    $$$$$$$$/ $$$$$$$$/       ".light_white
    puts"  ______   __    __  ______  _______                              ".cyan
    puts" /      \\ /  |  /  |/      |/       \\                             ".cyan
    puts"/$$$$$$  |$$ |  $$ |$$$$$$/ $$$$$$$  |                            ".cyan
    puts"$$ \\__$$/ $$ |__$$ |  $$ |  $$ |__$$ |                            ".cyan
    puts"$$      \\ $$    $$ |  $$ |  $$    $$/                             ".cyan
    puts" $$$$$$  |$$$$$$$$ |  $$ |  $$$$$$$/                              ".cyan
    puts"/  \\__$$ |$$ |  $$ | _$$ |_ $$ |                                  ".cyan
    puts"$$    $$/ $$ |  $$ |/ $$   |$$ |                                  ".cyan
    puts" $$$$$$/  $$/   $$/ $$$$$$/ $$/ ".cyan
    puts
end

def printTitle2
    puts" /$$$$$$$  /$$$$$$ /$$   /$$  /$$$$$$        /$$$$$$$  /$$$$$$$$                                    ".light_white
    puts"| $$__  $$|_  $$_/| $$$ | $$ /$$__  $$      | $$__  $$| $$_____/                                    ".light_white
    puts"| $$  \\ $$  | $$  | $$$$| $$| $$  \\ $$      | $$  \\ $$| $$                                          ".light_white
    puts"| $$$$$$$/  | $$  | $$ $$ $$| $$$$$$$$      | $$  | $$| $$$$$                                       ".light_white
    puts"| $$__  $$  | $$  | $$  $$$$| $$__  $$      | $$  | $$| $$__/                                       ".light_white
    puts"| $$  \\ $$  | $$  | $$\\  $$$| $$  | $$      | $$  | $$| $$                                          ".light_white
    puts"| $$  | $$ /$$$$$$| $$ \\  $$| $$  | $$      | $$$$$$$/| $$$$$$$$                                    ".light_white
    puts"|__/  |__/|______/|__/  \\__/|__/  |__/      |_______/ |________/                                    ".light_white
    puts" /$$$$$$$  /$$$$$$$$  /$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$   /$$$$$$  /$$$$$$$  /$$$$$$$$  /$$$$$$ ".cyan
    puts"| $$__  $$| $$_____/ /$$__  $$ /$$__  $$ /$$__  $$| $$__  $$ /$$__  $$| $$__  $$| $$_____/ /$$__  $$".cyan
    puts"| $$  \\ $$| $$      | $$  \\__/| $$  \\__/| $$  \\ $$| $$  \\ $$| $$  \\ $$| $$  \\ $$| $$      | $$  \\__/".cyan
    puts"| $$$$$$$/| $$$$$   |  $$$$$$ | $$      | $$$$$$$$| $$  | $$| $$  | $$| $$$$$$$/| $$$$$   |  $$$$$$ ".cyan
    puts"| $$____/ | $$__/    \\____  $$| $$      | $$__  $$| $$  | $$| $$  | $$| $$__  $$| $$__/    \\____  $$".cyan
    puts"| $$      | $$       /$$  \\ $$| $$    $$| $$  | $$| $$  | $$| $$  | $$| $$  \\ $$| $$       /$$  \\ $$".cyan
    puts"| $$      | $$$$$$$$|  $$$$$$/|  $$$$$$/| $$  | $$| $$$$$$$/|  $$$$$$/| $$  | $$| $$$$$$$$|  $$$$$$/".cyan
    puts"|__/      |________/ \\______/  \\______/ |__/  |__/|_______/  \\______/ |__/  |__/|________/ \\______/ ".cyan
end