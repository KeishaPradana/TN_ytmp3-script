#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[1;32m📦 Menginstall dependensi...\e[0m"
pkg update -y && pkg upgrade -y
pkg install -y python ffmpeg curl
pip install -U yt-dlp

echo -e "\e[1;32m📥 Mengambil TNmp3dl dari GitHub...\e[0m"
curl -o TNmp3dl https://raw.githubusercontent.com/KeishaPradana/TN_ytmp3-script/main/TNmp3dl
chmod +x TNmp3dl
mv TNmp3dl $PREFIX/bin/

echo -e "\e[1;32m✅ Instalasi selesai!"
echo -e "\e[1;34m🟢 Jalankan dengan: TNmp3dl \"https://youtube.com/watch?v=ID\" atau link playlist.\e[0m"
