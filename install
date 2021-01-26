printf '\033[36m';Friday installation script
echo made by thelearn-tech 
pkg install espeak -y
pkg install curl -y
pkg install termux-api -y
pkg install neofetch
pkg install wget -y
chmod +x friday
cp friday /data/data/com.termux/files/usr/bin
cd Friday.exc
touch weather
printf '\033[36m';echo "Enter city name like 'Kolkata' ,
echo make sure first letter is in capital
sleep 2
read a
echo "curl -s wttr.in/$a | head -7" >> weather
chmod +x weather
cd ..
cp Friday.exc /data/data/com.termux/files/usr/var
echo ""
sleep 3
echo thanks for downloading Friday
