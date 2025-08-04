#!/data/data/com.termux/files/usr/bin/bash

# Warna
green='\e[1;32m'
red='\e[0;31m'
reset='\e[0m'

# Tampilkan header
echo -e "${green}🎧 Selamat datang di TNmp3dl by KeishaPradana${reset}"
echo -e "${green}📥 Tempel link YouTube video/playlist untuk diunduh sebagai MP3.${reset}"
echo -ne "${green}🔗 Masukkan link: ${reset}"
read link

# Deteksi dan proses
if [[ "$link" == *"list="* && "$link" != *"watch?v="* ]]; then
    echo -e "${green}📂 Mendeteksi playlist penuh...${reset}"
    yt-dlp -x --audio-format mp3 "$link"

elif [[ "$link" == *"watch?v="* && "$link" == *"list="* ]]; then
    echo -e "${green}🎵 Mendeteksi video dalam playlist...${reset}"
    video_only=$(echo "$link" | grep -oP 'watch\?v=[^&]*')
    yt-dlp -x --audio-format mp3 "https://www.youtube.com/$video_only"

elif [[ "$link" == *"watch?v="* ]]; then
    echo -e "${green}🎵 Mendeteksi video tunggal...${reset}"
    yt-dlp -x --audio-format mp3 "$link"

else
    echo -e "${red}⚠️ Link tidak valid. Pastikan itu link YouTube.${reset}"
fi
echo -e "${green}✅ Selesai mengunduh MP3.${reset}"
