 #!/bin/bash 
 

 
 install_requirements() {
         apt update -y
	     pkg install nano -y
         pkg install termux-api -y
         pkg install neofetch
         pkg install wget -y
         pkg install python 3 -y
             
 }
 
 install_friday() {
	 chmod +x friday                                                                         clear
     mv friday /data/data/com.termux/files/usr/bin
     cp -r .Friday /data/data/com.termux/files/home
}

banner() {
	echo ""
    printf "\033[1;32m"; echo "Wellcome to "
    sleep 2
    clear
    echo " "
    echo -e  """ \e[1;38;5;214m
        _____                 
       /          /             
    ,-/-,__  o __/ __.    ,  
   (_/  / (_<_(_/_(_/|_(_/_  
                        /    
                      ''
 """
    echo " quick installation script"
}

ask() {
	echo ""
	printf "\033[1;32m"; echo "Do you want to continue"
	read -p "y/n " akkk
	if [ $akkk = "y" ]
	   then 
	   
	   echo ""
	   printf "\033[1;32m"; echo "Installing"
	   echo ""
	   sleep 1
	   install_requirements
	   install_friday
	   sleep 2
	 else
	   sleep 0.89
	   echo ""
	   printf "\033[1;31m"; echo "user interupt"
	   exit 1
	 fi 
}

remove_old() {
	
	rm -rf  /data/data/com.termux/files/usr/bin/friday
	rm -rf  /data/data/com.termux/files/usr/home/.Friday
}

end() {
	clear
	echo " "
	printf "\033[1;32m"; echo "  Friday installed"
	echo ""
	echo -e  "\e[0m type \e[1;32mfriday --help \e[0mto begin"
}	
	
if [[ $1 == "--update" ]]
 then 
     if [[ ! -f /data/data/com.termux/files/usr/bin/friday ]]
      then 
          echo -e "\e[0m Friday isn't installed"
     else
         remove_old
         install_requirements
         install_friday
         echo " "
         clear
         echo -e "\e[1;32m Update Finished"
         exit 1
         
              
      fi
else 
     banner
     ask
     end
     exit 1


fi
