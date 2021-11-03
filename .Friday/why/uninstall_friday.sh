#/bin/bash




_start=1

_end=100


init_uninstall() {
  # uninstall friday
	rm -rf /data/data/com.termux/files/usr/bin/friday
	rm -rf $PREFIX/bin/friday
	cd /data/data/com.termux/files/usr/bin
	rm -rf friday
  # remove .Friday
	rm -rf /data/data/com.termux/files/home/.Friday
	rm -rf $Home/.Friday
  cd ~/
  rm -rf .Friday
  # remove friday log
  rm -rf /data/data/com.termux/files/usr/var/log/Friday
  rm  -rf $PREFIX/var/log/Friday
  # remove details
  rm -rf /data/data/com.termux/files/usr/etc/Friday
  rm  -rf $PREFIX/etc/Friday

}


ProBar() {

    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done

    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")


    printf "\r\033[1;33m uninstalling :\033[1;31m [${_fill// /#}${_empty// /-}]\033[1;32m ${_progress}%%"


}

clear
echo " "
echo -e "\e[1;31m Friday Uninstallation Script"
echo -e "\e[0m"
read -p " Do Want To Continue [Yes/no]: " why_are_u_deleting_friday

if [[ $why_are_u_deleting_friday == "Yes" ]]
 then 
     clear
     echo -e "\e[0m"
     read -p "Any perticular reason [y/n]: " tell_reason_plz
     if [[ $tell_reason_plz == "y" ]]
      then
          echo "Tell your reason with << I deleted Friday for >> "
          sleep 3.5
          am start -n com.android.chrome/com.google.android.apps.chrome.Main -d 'https://github.com/thelearn-tech/Friday/issues' && init_uninstall
          sleep 1
          clear
          init_uninstall
          echo "Friday is deleted"
          exit 1
     else
         init_uninstall
         clear
         echo " "
         for number in $(seq ${_start} ${_end})
         do 
          sleep 0.09
          ProBar ${number} ${_end}
         done
         sleep 1
         echo " "
         echo "Friday is deleted"
         exit 1     
     fi
else
    echo " "
    echo -e "\e[1;32m User Interupt"
    exit 1
fi         
