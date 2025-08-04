#!/data/data/com.termux/files/usr/bin/bash

# Warna
green='\e[1;32m'
red='\e[0;31m'
reset='\e[0m'

echo -e "${green}📦 Menginstall ffmpeg...${reset}"
pkg install -y ffmpeg

echo -e "${green}📥 Mengambil yt-dlp versi binary (tanpa Python)...${reset}"
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o yt-dlp
chmod +x yt-dlp
mv yt-dlp $PREFIX/bin/

echo -e "${green}📥 Mengambil script TNmp3dl...${reset}"
curl -o TNmp3dl https://raw.githubusercontent.com/KeishaPradana/TN_ytmp3-script/main/TN_ytmp3dl
chmod +x TNmp3dl
mv TNmp3dl $PREFIX/bin/

echo -e "${green}✅ Instalasi selesai!${reset}"
echo -e "${green}🟢 Jalankan dengan: TNmp3dl${reset}"
