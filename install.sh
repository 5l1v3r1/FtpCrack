#!/data/data/com.termux/files/usr/bin/bash

# [*] Name of the Script: FtpCrack
# [*] Description: "Brute Force Attack to FTP Server"
# [*] Author: JRIC2002
# [*] Date: 01/12/2018

#COLORS      
	export black='\033[1;30m'
        export red='\033[1;31m'
        export green='\033[1;32m'
        export yellow='\033[1;33m'
        export blue='\033[1;34m'
        export magenta='\033[1;35m'
        export cyan='\033[1;36m'
        export white='\033[0m'

#INSTALACION DE PAQUETES

sleep 7
echo ""
printf "$cyan[*]$green Installing Packages...$white\n"
echo ""
sleep 5

apt install util-linux
apt install hydra

echo ""
echo ""

printf "$blue		>> Installation Complete <<$white\n"
echo ""
echo ""

function pregunta {
	
	printf "
        $blue   _____ _          $green ____                _
	$blue  |  ___| |_ _ __   $green/ ___|_ __ __ _  ___| | __
	$blue  | |_  | __| '_ \ $green| |   | '__/ _' |/ __| |/ /
	$blue  |  _| | |_| |_) |$green| |___| | | (_| | (__|   <
        $blue  |_|    \__| .__/  $green\____|_|  \__,_|\___|_|\_\ $white v2.0
        $blue            |_|$white
	"
	echo ""
	printf "              $yellow.:.:.$white Script encoded by: @JRIC2002 $yellow.:.:.$white\n"
	printf "      $yellow.:.:.$white Description: Brute Force Attack to FTP Server$yellow.:.:.$white\n"
	echo ""

	sleep 1
	printf "$cyan[$white\e0#$cyan]$magenta Desea iniciar FtpCrack?$white\n"
	echo ""
	sleep 1
	
	printf "$green       [$white\e001$green]$yellow Si$white\n"
	echo ""
	printf "$green       [$white\e002$green]$yellow No$white\n"
	echo ""
	
	printf "$green[$white\e0*$green]$green Choose an Option$white >>"
	read -p " " opt
	
	        if [ $opt = "1" -o $opt = "01" ]; then
	                clear
	                bash FtpCrack
	        elif [ $opt = "2" -o $opt = "02" ]; then
	                echo ""
	                exit
	        else
	                clear
	                pregunta
	        fi
}

pregunta

