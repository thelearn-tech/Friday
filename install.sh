#!/bin/bash

# installer version 1.2


install_pkg() {
	apt update -y
	pkg install nano -y 
	pkg install curl -y
	pkg install wget -y
	pkg install nmap -y
	pkg install python -y
	pkg install net-tools -y
    pkg install termux-api -y
    pkg install neofetch -y

}

check_internet_connection()  {                                          printf "\033[1;33m"; echo ""                                echo -n " Checking for Internet:"                                #DO NOT COPY                                                   ping -c 1 www.github.com > /dev/null 2>&1                       if [[ "$?" != 0 ]]                                              then                                                              # not connected                                                 sleep 1                                                         echo -e  "$red Not Connected"
      sleep 0.7                                                       echo -e "$default Please connect to Internet."                  exit 1                                                        else                                                                sleep 0.5                                                       echo -e "$green Connected"                                      sleep 0.8                                                       clear                                                       fi                                                          }

check_pkg() {
	clear
	echo " "
	echo -e -n "\e[1;32m Checking dependence......."
	if ! which python >/dev/null 2>&1; then
		sleep 1
        echo -e "\e[1;31mFAILED"
        sleep 0.7
        echo " "
	    echo -e "\e[1;31m python\e[0m is not installed."
	    echo -e "\e[1;31m Quitting:\e[0;97m please rerun the script."
	    exit 1
	else
	    if ! dpkg -s termux-api >/dev/null 2>&1; then
	      sleep 1
          echo -e "\e[1;31mFAILED"
          sleep 0.7
          echo " "
	      echo -e "\e[1;31m termux api\e[0m is not installed."
	      echo -e "\e[1;31m Quitting:\e[0;97m please rerun the script."
	      exit 1
	    else
	        if ! dpkg -s net-tools >/dev/null 2>&1; then
	           sleep 1
               echo -e "\e[1;31mFAILED"
               sleep 0.7
               echo " "
	           echo -e "\e[1;31m net-tools\e[0m is not installed."
	           echo -e "\e[1;31m Quitting:\e[0;97m please rerun the script."
	           exit 1
	        else
	           if ! which wget >/dev/null 2>&1; then
	                sleep 1
                    echo -e "\e[1;31mFAILED"
                    sleep 0.7
                    echo " "
	                echo -e "\e[1;31m wget\e[0m is not installed."
	                echo -e "\e[1;31m Quitting:\e[0;97m please rerun the script."
	                exit 1
	            else
	            	if ! which nano >/dev/null 2>&1; then
	                sleep 1
                    echo -e "\e[1;31mFAILED"
                    sleep 0.7
                    echo " "
	                echo -e "\e[1;31m nano\e[0m is not installed."
	                echo -e "\e[1;31m Quitting:\e[0;97m please rerun the script."
	                exit 1
	                else
	            	    if ! which neofetch >/dev/null 2>&1; then
	                    sleep 1
                        echo -e "\e[1;31mFAILED"
                        sleep 0.7
                        echo " "
	                    echo -e "\e[1;31m neofetch\e[0m is not installed."
	                    echo -e "\e[1;31m Quitting:\e[0;97m please rerun the script."
	                    exit 1
	                    else
                            if ! which nmap >/dev/null 2>&1; then
	                           sleep 1
                               echo -e "\e[1;31mFAILED"
                               sleep 0.7
                               echo " "
	                           echo -e "\e[1;31m nmap\e[0m is not installed."
	                           echo -e "\e[1;31m Quitting:\e[0;97m please rerun the script."
	                           exit 1
	                        else
	                           if ! which curl >/dev/null 2>&1; then
	                               sleep 1
                                   echo -e "\e[1;31mFAILED"
                                   sleep 0.7
                                   echo " "
	                               echo -e "\e[1;31m curl\e[0m is not installed."
	                               echo -e "\e[1;31m Quitting:\e[0;97m please rerun the script."
	                               exit 1
	                            else
	                                sleep 2
	                                echo -e "\e[1;32mPASSED"
	                                echo " "
	                            fi
	                        fi  
	                    fi   
	                fi
	            fi
            fi
        fi
    fi 
}


install_friday() {
   
    rm -rf  /data/data/com.termux/files/usr/bin/friday
	rm -rf  /data/data/com.termux/files/usr/home/.Friday

    #installing friday
    
    chmod -f +x friday                                                                        clear
    mv friday /data/data/com.termux/files/usr/bin
    mv .Friday /data/data/com.termux/files/home       
    
}

ask() {
	echo ""
	read -p "Do you want to continue [y/n]: " optiion
	if [ $optiion == "Y" ] || [ $optiion == "y" ]; then
	   clear
	   echo ""
	   printf "\033[1;32m"; echo "Installing........"
	   echo ""
	   sleep 1
	   clear
	   install_pkg
	   check_pkg
#	   install_friday
	   sleep 1
	   clear
	   echo " "
	   printf "\033[1;33m"; echo " Thanks for installing Friday."
	   echo ""
	   echo -e  "\e[0m type \e[1;32mfriday --help \e[0mto begin."

	
	else
	   sleep 0.89
	   clear
	   printf "\033[1;31m"; echo "user interupt"
	   echo ""
	   exit 1
	fi 
}





banner() {
	clear
	sleep 0.4
    echo -e  """
\e[1;32m Wellcome to \e[1;38;5;214m
             _____                 
            /          /             
         ,-/-,__  o __/ __.    ,  
        (_/  / (_<_(_/_(_/|_(_/_   
                             /    
                           ''
                           \e[1;32m installation script.

 """
    echo -e "\e[0m"
}

if [[ $1 == "--update" ]]
 then 
     if [[ ! -f /data/data/com.termux/files/usr/bin/friday ]]
      then 
          # not found
          echo -e "\e[1;31m Friday isn't installed"
     else
         clear
         echo -e "\e[0m Updating............."
         echo " "
	 check_internet_connection 
         clear
	 install_pkg
         install_friday
         clear
         sleep 0.3
         clear
         echo -e "\e[1;32m Update Finished"
         sleep 1
         echo -e " Friday: \e[0mStarting selftest "
         sleep 2.5
         friday --self-test
         exit 1
         
              
      fi
else 
     banner
     ask
     exit 1


fi
