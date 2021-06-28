#!/bin/bash

# Friday personal termux Assistance by thelearn-tech 
# GNU General Public License v3.0

# https://github.com/thelearn-tech

# https://github.com/thelearn-tech/Friday

# https://github.com/thelearn-tech/Friday/pulls
# https://github.com/thelearn-tech/Friday/issues


id=$(whoami)
green="\e[1;32m"
lightgreen="\e[0m\e[32m"
red="\e[1;31m"
lred="\e[0m\e[31m"
cyan="\e[1;36m"
yellow="\e[1;33m"
orange="\e[1;38;5;214m"
default="\e[0m"

ver="1.2"



idk() {
	echo " "
	echo -e "$green I don't know this $red command "
	echo -e "$green Try$yellow friday --help $default"
	echo " "
	
}

help_text() {
echo -e """
 $yellow install <packageName> $default to intsall package.

 $yellow uninstall <packageName> $default to remove package.
 
 $yellow delete <file/folder> $default to delete file/folder.
 
 $yellow reset $default to reset terminal.
 
 $yellow copy $default to copy file.
 
 $yellow move $default to move file.
 
 $yellow renmae $default to rename file.
 
 $yellow auto update $default to perform auot update.
 
 $yellow user $default to get current loged user's name.
 
 $yellow list processes $default to get pid of processes.
 
 $yellow pwd $default to post working directory.
 
 $yellow device info $default to get device info.
 
 $yellow ip addr $default to get ip address.
 
 $yellow unzip <zipFile> $default to unzip a zip file.
 
 $yellow text info <textFile> $default to number of line, words, character in a file. 
 
 $yellow download <link> $default to download a file with wget.
 
 $yellow edit <fileName> $default to edit file with nano.
 
 $yellow view <fileName> $default to cat a file.
 
 $yellow apache2 start/stop/restart $default to start/stop/reset apapche2.
 
 $yellow enable/disable/scan wifi $default to turn wifi on/off or scan.
 
 $yellow battery status $default to view battery status. 
 
 $yellow turn torch on/off $default to turn torch on/off.
 
 $yellow torch on/off $default to turn torch on/off.
 
 $yellow say <words> $default to make friday speak.
 
 $yellow camera info $default to get camera information. 
 
 $yellow set brightness <0-255> $default to set brightness between 0-255.
 
 $yellow get location $default to get location. 
 
 $yellow take photo/selfie $default to take pictures.
 
 $yellow list contacts $default to list contacts.
 
 $yellow add <firstNum> <secondNum $default to do addition.
 
 $yellow sub <firstNum> <secondNum> $default to do subtraction.
 
 $yellow div <firstNum> <secondNum> $default to do division.
 
 $yellow multi <firstNum> <secondNum> $default to do multiplication.
 
 $yellow area of square/rectriangle $default to find area of square/rectriangle.
 
 $yellow perimeter of square/rectriangle $default to find perimeter of square/rectriangle.
 
 $yellow oddeven <num> $default to check if a num is odd or even.
 
 $yellow chat $default to chat with friday.
 
 $yellow rps default to play  rock, paper, scissor game.
 
 $green info $default do get information on friday.
 
 $green --self-test $default to perform a self test.
 
 $green --check-update $default to check for update.
 
 $green --force-update $default to force update Friday.
 
 $green --help $default to show this text. 
 
 
"""


}

banner() {
	 echo -e """ $orange
      _____                 
     /          /             
  ,-/-,__  o __/ __.    ,  
 (_/  / (_<_(_/_(_/|_(_/_  $green V$ver $orange 
                      /    $green by thelearn-tech $orange
                    ''

""" 
}

update_me() {
	
	echo -e "$default Do you want to continue $default"
	read -p " Yes/no " whbvc
	if [[ $whbvc == "Yes" ]]
	 then
	
	     cd /data/data/com.termux/files/usr/home
	     git clone https://github.com/thelearn-tech/Friday
	     cd Friday
	     chmod +x install.sh
	     ./install.sh --update
	      rm -rf /data/data/com.termux/files/usr/home/Friday
	      
	 else 
	     echo -e "$red user interupt"
	     
	 fi         
}


force_update() {
	echo " "
	echo -e "$yellow Force Updating in 6 seconds"
	echo -e "$default Ctrl+c  to stop "
	sleep 7
	echo "Forcing Update"
	sleep 1.3
	clear
	cd /data/data/com.termux/files/usr/home
	git clone https://github.com/thelearn-tech/Friday
	cd Friday
	chmod +x install.sh
	./install.sh --update
	rm -rf /data/data/com.termux/files/usr/home/Friday
	clear      
	
}

self_test() {
	
	echo " "
	echo -e -n "$yellow Python3.......> "
	if ! dpkg -s python3 >/dev/null 2>&1; then
	    sleep 1
	    echo -e "$red Not Installed"
	    echo " "
	    
	else
	    sleep 1
	    echo -e "$green Installed"
 	    echo " "
 	fi   
 	 
 	echo -e -n "$yellow Termux API....> "    
	if ! dpkg -s termux-api >/dev/null 2>&1; then
	    sleep 1
	    echo -e "$red Not Installed"
	    echo " "
	    
	else
	    sleep 1
	    echo -e "$green Installed"
 	    echo " "
 	fi     
 	
	echo -e -n "$yellow Net Tools.....> "
	if ! dpkg -s net-tools >/dev/null 2>&1; then
	    sleep 1
	    echo -e "$red Not Installed"
	    echo " "
	    
	else
	    sleep 1
	    echo -e "$green Installed"
 	    echo " "
 	fi  
 	
 	echo -e -n "$yellow Neofetch......> "
	if ! dpkg -s neofetch >/dev/null 2>&1; then
	    sleep 1
	    echo -e "$red Not Installed"
	    echo " "
	    
	else
	    sleep 1
	    echo -e "$green Installed"
 	    echo " "
 	fi  
 	
 	echo -e -n "$yellow Curl.........> "
	if ! dpkg -s curl >/dev/null 2>&1; then
	    sleep 1
	    echo -e "$red Not Installed"
	    echo " "
	    
	else
	    sleep 1
	    echo -e "$green Installed"
 	    echo " "
 	fi  
 	
 	echo -e -n "$yellow Wget.........> "
	if ! dpkg -s wget >/dev/null 2>&1; then
	    sleep 1
	    echo -e "$red Not Installed"
	    echo " "
	    
	else
	    sleep 1
	    echo -e "$green Installed"
 	    echo " "
 	fi  
 	
 	echo -e -n "$yellow Apache2.......> "
 	if ! dpkg -s apache2 >/dev/null 2>&1; then
 	    sleep 1
 	    echo -e "$red Not Installed"
	    echo " "
	    
	else
	    sleep 1
	    echo -e "$green Installed"
 	    echo " "
 	fi     
 	
	echo " "
	echo -e -n "$yellow Self Test.......> "
	if ! dpkg -s python3 >/dev/null 2>&1; then
	     sleep 2
	     echo -e "$red Failed"
	else
	    if ! dpkg -s termux-api >/dev/null 2>&1; then
	       sleep 2
	       echo -e "$red Failed"
	    else
	        if ! dpkg -s net-tools >/dev/null 2>&1; then
	           sleep 2
	           echo -e "$red Failed"
	        else
	           if ! dpkg -s wget >/dev/null 2>&1; then
	                sleep 2
	                echo -e "$red Failed"
	            else
	                if ! dpkg -s wget >/dev/null 2>&1; then
	                    sleep 2
	                    echo -e "$red Failed"
	                else
	                    if ! dpkg -s curl >/dev/null 2>&1; then
	                        sleep 2
	                        echo -e "$red Failed"
	                    else
	                        if ! dpkg -s apache2 >/dev/null 2>&1; then
	                            sleep 2
	                            echo -e "$red Failed"
	                        else
	                           sleep 2
	                           echo -e "green Passed"
	                           echo " "
	                           echo ""
	                        fi
	          
	                    fi
	         
	                fi
	                
	           fi     
	                
	       fi     
	            
	    fi
	    
	fi                
}


# main
# Internal commands
if [[ $1 == "install" ]]
 then
     apt install $2
     
elif [[ $1 == "uninstall" ]]
 then
     apt remove $2
          
elif [[ $1 == "reset" ]]
 then
     reset
     
elif [[ $1 == "copy" ]]
 then 
     cp $2 $3
     
elif [[ $1 == "move" ]]
 then 
     mv $2 $3
  
elif [[ $1 == "rename" ]]
 then 
     mv $2 $3               
     
elif [[ $1 == "user" ]]
 then 
     echo -e "$green Current user is $yellow $id"
     
elif [[ $1 == "list" ]]
 then 
     if [[ $2 == "processes" ]]
      then
      top
      else
          echo -e "$green list $yellow requires extra argument $green 'processes' $default"
          echo -e "$yellow Try $green friday list processes $default"
          echo " "
     fi

elif [[ $1 == "auto" ]]
 then 
     if [[ $1 == "update" ]]
       then
           apt update -y
           apt upgrade -y
           pip3 install --upgrade pip
           apt autoremove -y
       else 
           echo -e "$green auto $yellow requires extra arg $green 'update'"
           echo -e "$yellow Try $green friday auto update $default"
           echo " "
       fi      
       
elif [[ $1 == "device" ]]
 then 
     if [[ $2 == "info" ]]
       then
           neofetch
     else 
         echo -e "$green device $yellow requires extra arg $green 'device info'"
         echo -e "$yellow Try $green friday device info $default"
         echo " "            
      fi   

elif [[ $1 == "delete" ]]
 then
     rm -rf $2
     echo -e "$green $2 $default deleted"
     echo " "
     
elif [[ $1 == "pwd" ]]
 then 
     pwd
     
elif [[ $1 == "ip" ]]
 then 
     if [[ $2 == "addr" ]]
      then 
          ifconfig | grep inet | awk '{ print $2 }'
      else 
          echo -e "$green ip $yellow requires extra argument $green 'addr' $default"
          echo -e "$yellow Try $green friday ip addr $default"
          echo " "
      fi
    
elif [[ $1 == "unzip" ]]
 then
     unzip $2
          
elif [[ $1 == "text" ]]
 then 
     if [[ $2 == "info" ]]
      then
          echo " "
          echo -e "$green text $2rmation in $3"
          wc $3
          echo -e "$yellow line ,word ,character $default"
          echo " "
     else
         
         echo -e "$green text $yellow requires extra arg $green 'info <fileName>' "  
         echo -e "$yellow Try $green friday text info <fileName> $default"
          echo " "
      fi
 
 elif [[ $1 == "edit" ]]
  then
      nano $2

 elif [[ $1 == "download" ]]
  then
      wget $2
    
elif [[ $1 == "apache2" ]]
  then
      if [[ $2 == "start" ]]
       then
           apachectl 
           echo " "
           sleep 0.7
           echo -e "$green apache2 started $default"
           
       elif [[ $2 == "stop" ]]
         then
             apachectl stop
             echo ""
             echo -e "$green apache2 stoped $default"
       
       elif [[ $2 == "restart" ]]
        then
            apachectl restart
            echo ""
            echo -e "$green apache2 restarted $default"             
       
       else 
           echo -e "$green apache2 $yellow requires extra arg $green 'start/stop/restart'"
           echo -e "$yellow Try $green apache2 start/stop/restart $default"
           echo " "
       fi       
          
          
elif [[ $1 == "view" ]]
 then 
     cat $2
 
elif [[ $1 == "--self-test" ]]
 then 
     self_test
 
elif [[ $1 == "--help" ]]
 then
     help_text
     
# Termux api extension               

elif [[ $1 == "enable" ]]
 then
     if [[ $2 == "wifi" ]]
      then 
          termux-wifi-enable true
       else
           echo -e "$green enable $yellow requires extra arg $green 'wifi'"
           echo -e "$yellow Try $green friday enable wifi $default"
            echo " "
     fi         
          
elif [[ $1 == "disable" ]]
 then 
     if [[ $2 == "wifi" ]]
      then
          termux-wifi-enable false
          
     else
         echo -e "$green disable $yellow requires extra arg $green 'wifi'"
           echo -e "$yellow Try $green friday disable wifi $default"
            echo " "
     fi
         
elif [[ $1 == "scan" ]]
 then
     if [[ $2 == "wifi" ]]
      then 
          termux-wifi-scaninfo
      
     else
         echo -e "$green scan $yellow requires extra arg $green 'wifi'"
           echo -e "$yellow Try $green friday scan wifi $default"
            echo " "
         
     fi                                                   
elif [[ $1 == "battery" ]]
 then
     if [[ $2 == "status" ]]
      then
          termux-battery-status
      else 
           echo -e "$green battery $yellow requires extra arg $green 'status'"
           echo -e "$yellow Try $green friday battery status $default"
            echo " "
      fi 
elif [[ $1 == "turn" ]]
 then 
          if [[ $2 == "torch" ]]
           then 
               if [[ $3 == "on" ]]
                then 
                    termux-torch on
                    echo -e "torch $green ON $default"
             
               elif [[ $3 == "off" ]]
                then 
                    termux-torch off
                    echo -e "torch $yellow OFF $default"
               else
                   echo -e "$green torch $yellow requires extra arg $green 'on/off'"
                   echo -e "$yellow Try $green friday torch on/off $default"
                    echo " "
               fi
               
          else 
              echo -e "$green turn $yellow requires extra arg $green 'torch'"
              echo -e "$yellow Try $green friday turn torch on/off $default"
               echo " "
          fi     
    
elif [[ $1 == "torch" ]]
 then
     if [[ $2 == "on" ]]
      then 
          termux-torch on      
          echo -e "torch $green ON $default"
      elif [[ $2 == "off" ]]
       then 
           termux-torch off
           echo -e "torch $yellow OFF $default" 
       else 
            echo -e "$green torch $yellow requires extra arg $green 'on/off'"
            echo -e "$yellow Try $green friday torch on/off $default"
             echo " "
       fi            
           
elif [[ $1 == "say" ]]
  then
      termux-tts-speak $2 $3 $4 $5 $6 $7
 
elif [[ $1 == "camera" ]]
 then
     if [[ $2 == "info" ]]
       then 
           termux-camera-info
      else
           echo -e "$green camera $yellow requires extra arg $green 'info'"
           echo -e "$yellow Try $green friday camers info $default"
           echo " "
       fi
elif [[ $1 == "set" ]]
 then
     if [[ $2 == "brightness" ]]
      then
         termux-brightness $3
      else
           echo -e "$green set $yellow requires extra arg $green 'brightness'"
           echo -e "$yellow Try $green friday set brightness <value 0-255> $default"
            echo " "
      fi                                     
elif [[ $1 == "get" ]]
 then 
     if [[ $2 == "location" ]]
      then 
          termux-location
       else
            echo -e "$green get $yellow requires extra arg $green 'location'"
            echo -e "$yellow Try $green friday get location $default"
             echo " "
       fi          
           
           
elif [[ $1 == "take" ]]
 then 
     if [[ $2 == "photo" ]]
      then
          termux-camera-photo 0
          echo -e "$green Taking Photo with back cam"
     elif [[ $2 == "selfie" ]]
      then 
          termux-camera-photo 1
      else
           echo -e "$green take $yellow requires extra arg $green 'photo/selfie'"
           echo -e "$yellow Try $green friday torch photo/selfie $default"
            echo " "
      fi
                    
elif [[ $1 == "list" ]]
 then 
     if [[ $2 == "contacts" ]]
      then 
           termux-contact-list
     else
          echo -e "$green list $yellow requires extra arg $green 'contacts'"
          echo -e "$yellow Try $green friday list contacts $default"
           echo " "
         
     fi
     
elif [[ $1 == "add" ]]
 then 
     ans=$(( $2 + $3 ))
     echo ""
     echo -e "$yellow $2 + $3 =$green $ans $default"
     echo ""
                        
elif [[ $1 == "sub" ]]
 then 
     ans=$(( $2 - $3 ))
     echo ""
     echo -e "$yellow $2 - $3 =$green $ans $default"
     echo ""
     
elif [[ $1 == "multi" ]]
 then 
     ans=$(( $2 * $3 ))
     echo ""
     echo -e "$yellow $2 x $3 =$green $ans $default"
     echo ""
                
elif [[ $1 == "div" ]]
 then
     if [[ $2 > $3 ]] 
      then
          ans=$(( $2 / $3 ))
          echo ""
          echo -e "$yellow $2 / $3 =$green $ans $default"
          echo ""
       else 
           echo -e "$red First number has to grater then Second number. $default"    
       fi
       
elif [[ $1 == "area" ]]
 then 
     if [[ $2 == "of" ]]
      then
    
          if [[ $3 == "square" ]] 
           then
               echo " "
               echo -e "$cyan Formula Side^2"
               ans=$(( $4 * $4 ))    
               echo -e "$green Area of Square with side of $4m is $ans sq.m $default"           
               echo ' '   
          elif [[ $3 == "rectriangle" ]]
           then
               echo " "
               echo -e "$cyan Formula lenght X width"
               ans=$(( $4 * $5 ))    
               echo -e "$green Area of Rectriangle with length of $4m and width of $5m is $ans sq.m $default"       
               echo " "
           else
               echo -e "$green area of $yellow requires extra arg $green 'square/rectriangle'"
               echo -e "$yellow Try $green friday area of square <side>"
               echo -e "$yellow Try $green friday area of rectriangle <lenght> <width> $default"
               echo " "  
       
           fi
     else
         echo -e "$green area $yellow requires extra arg $green 'of'"
         echo -e "$yellow Try $green friday area of square <side>"
         echo -e "$yellow Try $green friday area of rectriangle <lenght> <width> $default"
         echo " "  
       
     
     
     fi     
      
elif [[ $1 == "perimeter" ]]
 then 
     if [[ $2 == "of" ]]
      then
    
          if [[ $3 == "square" ]] 
           then
               echo " "
               echo -e "$cyan Formula 4 X Side"
               ans=$(( 4 * $4 ))    
               echo -e "$green Perimeter of Square with side of $4m is $ans sq.m $default"           
               echo ' '   
          elif [[ $3 == "rectriangle" ]]
           then
               echo " "
               echo -e "$cyan Formula 2(lenght + width)"
               ad=$(( $4 + $5 ))
               ans=$(( 2 * $ad ))    
               echo -e "$green Perimeter of Rectriangle with length of $4m and width of $5m is $ans sq.m $default"       
               echo " "
           else
               echo -e "$green perimeter of $yellow requires extra arg $green 'square/rectriangle'"
               echo -e "$yellow Try $green friday perimeter of square <side>"
               echo -e "$yellow Try $green friday perimeter of rectriangle <lenght> <width> $default"
               echo " "  
       
           fi
     else
         echo -e "$green area  $yellow requires extra arg $green 'of'"
         echo -e "$yellow Try $green friday area of square <side>"
         echo -e "$yellow Try $green friday area of rectriangle <lenght> <width> $default"
         echo " "  
       
     
     
     fi          
            
elif [[ $1 == "info" ]]
 then 
     banner
     echo -e "$default Repository $lightgreen https://github.com/thelearn-tech/Friday"
     echo -e "$default Wikipedia $lightgreen https://github.com/thelearn-tech/Friday/wiki"
     echo -e "$default Report problem at $lightgreen https://github.com/thelearn-tech/Friday/issue"
     echo ""
elif [[ $1 == "oddeven" ]]
 then 
     rem=$(( $2 % 2 ))
 
      if [ $rem -eq 0 ]
       then
           echo -e "$yellow $2 $green is a even number"
           echo ""
      else
           echo -e "$yellow $2 $green is a odd number"
           echo ""
      fi

                                 
elif [[ $1 == "chat" ]]
 then 
     python3 /data/data/com.termux/files/usr/home/.Friday/chat.py
   
elif [[ $1 == "rps" ]]
 then 
     python3 /data/data/com.termux/files/usr/home/.Friday/rock_paper_scissor.py
      
     
elif [[ $1 == "--check-update" ]]
 then
     echo -e -n "$yellow Checking......... "
     sleep 1.4
     echo -e "$green Done"
     sleep 2
     clear
     git_ver=$(curl -s "https://raw.githubusercontent.com/thelearn-tech/Friday/main/.Friday/.version" -L)
     if [[ $ver == $git_ver ]] 
       then 
           
           echo -e "$green Friday $default is up to date"
           echo " "
     else
           echo " " 
           echo -e "$yellow Update found"
           echo " "
           echo -e -n "$yellow Latest VERSION "
           sleep 0.5          
           echo -e "$green $git_ver"
           echo " "
           echo -e -n  "$yellow Current VERSION "
           sleep 0.5
           echo -e "$orange $ver" 
           echo " "
           update_me
          
     fi      

elif [[ $1 == "--force-update" ]]
 then 
     force_update

elif [[ $1 == "--version" ]]
  then 
      echo -e "$default Version $orange$ver"

     
else
    echo " "
	echo -e "$yellow I don't know that"
	echo -e "$default Try$green friday --help $default"
	echo " "
	exit 1
fi         
