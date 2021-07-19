#/bin/bash


init_uninstall() {
	rm -rf /data/data/com.termux/files/usr/bin/friday
	rm -rf $PREFIX/bin/friday
	cd /data/data/com.termux/files/usr/bin
	rm -rf friday
	rm -rf /data/data/com.termux/files/home/.Friday
	rm -rf $Home/.Friday
	cd 
	rm -rf .Friday
}

echo -e "\e[1;31m Friday Uninstallation Script"
echo -e "\e[0m"
read -p "Do Want To Continue [Yes/no]: " why_are_u_deleting_friday

if [[ $why_are_u_deleting_friday == "Yes" ]]
 then 
     clear
     echo -e "\e[0m"
     read -p "Any perticular reason [y/n]: " tell_reason_plz
     if [[ $tell_reason_plz == "y" ]]
      then
          echo "Tell your reason with << I deleted Friday >>"
          sleep 3.5
          am start -n com.android.chrome/com.google.android.apps.chrome.Main -d 'https://github.com/thelearn-tech/Friday/issues' && init_uninstall
          sleep 1
          clear
          echo "Friday is deleted"
          exit 1
     else
         echo "removing Friday"
         init_uninstall
         echo "Friday is deleted"
         exit 1     
     fi
else
    echo " "
    echo -e "\e[1;32m User Interupt"
    exit 1
fi         
