#!/bin/bash
# zsecc0de-crew-id
# tolong hargai pembuat nya jangan sampai ubah nama pembuat :(
WH=$(tput setaf 7)
GR=$(tput setaf 2)
YE=`tput setaf 3`
function getcookies() {
         brohs=$(curl --silent --compressed --connect-timeout 5 --cookie-jar cookiesss.tmp -X POST "https://free.facebook.com/login/" -L -H "User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0" -H "Referer: https://mobile.facebook.com/" -d "email=$nama&pass=$passanj&login=Masuk")
         #"<title>Facebook</title>"
         begitu=$(cat cookiesss.tmp |cut -d '/' -f2|gawk '{print $3,$4}'|tail -6)
         echo "$begitu" >> simpanlah.txt
         lah=$(cat simpanlah.txt|grep 'c_user'|grep -Eo '[0-9]*')
         inijuga=$(cat simpanlah.txt|grep 'xs'|gawk '{print $2}')
         waduhparah=$(cat simpanlah.txt|grep 'sb'|head -1|gawk '{gsub("sb",""); print}'|gawk '{print $1}')
         matamu=$(cat simpanlah.txt|grep 'fr'|gawk '{print $2}')
         hay=$(cat simpanlah.txt|grep 'datr'|cut -d ' ' -f2)
         echo "$WH"
         echo -e "c_user=$lah;datr=$hay;fr=$matamu;sb=$waduhparah;xs=$inijuga"
rm -rf cookiesss.tmp
rm -rf simpanlah.txt
}
echo -e """""
             create by : ${GR}widhisec
×______________________________  ________   ____  __  ×
${GR}×\_   _____/\______   \_   ___ \ \_____  \ |    |/ _| ×
× |    __)   |    |  _/    \  \/  /   |   \|      <   ×
${WH}× |     \    |    |   \     \____/    |    \    |  \  ×
× \___  /    |______  /\______  /\_______  /____|__ \ ×
×     \/            \/        \/         \/        \/ ×
+-----------------------------------------------------+
                COOKIES FB
"""""
read -p $YE'username: ' nama
read -sp $YE'password: ' passanj
getcookies ${nama} ${passanj}
