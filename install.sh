#!/bin/bash

# installer version 1.3

#var

_start=1

_end=100


install_pkg() {
	apt update -y
	pkg install file -y
	pkg install nano -y 
	pkg install curl -y
	pkg install wget -y
	pkg install nmap -y
	pkg install python -y
 	pkg install net-tools -y
  pkg install termux-api -y
  pkg install neofetch -y

}

check_internet_connection()  {
    printf "\033[1;33m"; echo ""                                
    echo -n " Checking for Internet:"
     #DO NOT COPY
    ping -c 1 www.github.com > /dev/null 2>&1
    if [[ "$?" != 0 ]]       
      then                                                             
    # not connected
      sleep 1
      echo -e  "\033[1;31m Not Connected"
      sleep 0.7
      echo -e "\033[0m Please connect to Internet."
      exit 1                                                       
    else                                                                
        sleep 0.5                                                       
        echo -e "\033[1;32m Connected"
        sleep 2
        clear
    fi
}
                                                     
                                                         
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
                                  sleep 2.6
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



verify_friday() {
	if ! sha256sum -c friday.sha256sum | grep "OK"  >/dev/null 2>&1; then 
       echo -e -n "\e[0m Intrigity Test:"
       sleep 2
       echo -e "\e[1;31m FAILED \e[0m"
       sleep 1
       echo " "
       echo -e " Try downloading Friday again from\e[1;36m https://github.com/thelearn-tech/Friday \e[0m"
       sleep 2
       exit 1
       exit 1
    else
    	echo -e -n "\e[0m Intrigity Test:"
    	sleep 2
    	echo -e "\e[32m PASSED"
    	sleep 1
    fi
}


install_friday() {
   
  rm -rf  /data/data/com.termux/files/usr/bin/friday
  rm -rf $PREFIX/bin/friday
	rm -rf  /data/data/com.termux/files/usr/home/.Friday
  rm -rf $HOME/.Friday

  #installing friday
    
  chmod -f +x friday                                                                       
  clear
  mv friday /data/data/com.termux/files/usr/bin
  mv .Friday /data/data/com.termux/files/home    
  if [[ -f /data/data/com.termux/files/usr/var/log/Friday/Friday.log ]] 
  then
    echo " "
  else
    mkdir $PREFIX/var/log/Friday
    touch $PREFIX/var/log/Friday/Friday.log  

  fi

  if [[ -f /data/data/com.termux/files/usr/etc/Friday/details.txt ]]
  then
    echo " "
  else
    mkdir $PREFIX/etc/Friday
    mkdir $PREFIX/etc/Friday/user
    touch $PREFIX/etc/Friday/user/details.txt  
  fi
}

get_details() {
  if [[ -f /data/data/com.termux/files/usr/etc/Friday/details.txt ]]
  then 
    echo 
  else

    clear
    echo -e "\033[1;32m"
    read -p " Specify your gender which is required by chat.py [male/female]: " ugen
    sleep 0.7
    clear
    echo " "
    echo -e "\033[1;33m Your gender:\033[1;32m $ugen"
    sleep 0.4
    echo " "
    echo " "
    read -p " Is the above information correct. [y/n]: " is_user_happy
    echo " "
    echo " "
  fi

}

ProBar() {

    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done

    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")


    printf "\r\033[1;33m Writing :\033[1;34m [${_fill// /#}${_empty// /-}]\033[1;32m ${_progress}%%"


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
	   verify_friday
	   check_internet_connection
	   install_pkg
	   check_pkg
 	   install_friday
     clear
	   sleep 1
     get_details
     if [[ $is_user_happy == "y" ]]
      then
      for number in $(seq ${_start} ${_end})
      do 
        sleep 0.02
        ProBar ${number} ${_end}
      done
        
         echo $ugen >> $PREFIX/etc/Friday/user/details.txt

     
    else
      clear
      echo -e "\e[1;31mplease rerun the script"
      exit 1
      
    fi  
	   clear
	   termux-toast "Friday Installed"
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
          exit 1
     else
         clear
         echo -e "\e[0m Updating............."
         echo " "
         sleep 3
         clear
         verify_friday
	       check_internet_connection 
	       install_pkg
         install_friday
         clear
         get_details
         
         if [[ $is_user_happy == "y" ]]
         then
          for number in $(seq ${_start} ${_end})
          do 
          sleep 0.02
          ProBar ${number} ${_end}
          done
          
          echo $ugen >> $PREFIX/etc/Friday/user/details.txt


          
        else
          echo -e "\e[1;31mplease rerun the script"
          exit 1
          
      
        fi  
         ver=$(friday --version)
         id=$(whoami)
          #write log
         echo "$id .. $dt __> Upated to $ver" >> $PREFIX/var/log/Friday/Friday.log
         sleep 1
         clear
         echo -e "\e[1;32m Update Finished"
         sleep 1
         echo " "
         echo -e " Friday: \e[0mStarting selftest "
         sleep 2.5
         friday --self-test
         termux-toast "Friday Update Finished"
         exit 1
         
              
      fi
else 
     banner
     ask
     exit 1


fi
