 #!/bin/bash 
 
 install_requirements() {
	 pkg install nano -y
     pkg install espeak -y
     pkg install curl -y
     pkg install termux-api -y
     pkg install neofetch
     pkg install wget -y
 }
 
 install_friday() {
	 chmod +x friday                                                                         clear
     cp friday /data/data/com.termux/files/usr/bin
     cp -r Friday.exc /data/data/com.termux/files/usr/var
}

banner() {
	echo ""
    printf "\033[32m"; echo "Wellcome to Friday installation script"
    sleep 2
    clear
    echo ""
    sh Friday.exc/.forinstall
    echo ""
}

ask() {
	echo ""
	printf "\033[32m"; echo "Do you want to continue"
	read -p "y/n " akkk
	if [ $akkk = "y" ]
	   then 
	   
	   echo ""
	   printf "\033[32m"; echo "installing"
	   echo ""
	   sleep 1
	   install_requirements
	   clear
	   install_friday
	 else
	   sleep 0.89
	   echo ""
	   printf "\033[31m"; echo "user interupt"
	   exit 1
	 fi 
}

end() {
	clear
	printf "\033[32m"; echo "   Friday installed"
	echo ""
	printf "\033[32m"; echo "  type friday help to begin"
}	
	
# first show banner
banner
# then ask for pesmission
ask
# then end
end



