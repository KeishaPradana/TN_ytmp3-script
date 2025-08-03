#!/data/data/com.termux/files/usr/bin/bash

# Warna teks
green='\e[1;32m'
red='\e[0;31m'
reset='\e[0m'

# Pesan awal
echo -e "${green}📦 Menginstall yt-dlp dan ffmpeg versi ringan...${reset}"

# Setup storage & install ffmpeg (masih dibutuhkan untuk konversi mp3)
termux-setup-storage
pkg install ffmpeg curl -y

# Unduh yt-dlp binary langsung
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o $PREFIX/bin/yt-dlp
chmod +x $PREFIX/bin/yt-dlp

# Konfirmasi
echo -e "${green}✅ yt-dlp berhasil diinstal langsung tanpa pip!${reset}"
sleep 1

# Input link dari pengguna
echo -ne "${green}🎧 Masukkan link YouTube (video atau playlist): ${reset}"
read link

# Deteksi dan unduh
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
    echo -e "${red}⚠️ Link tidak valid. Pastikan berasal dari YouTube.${reset}"
fi

# Pesan akhir
echo -e "${green}✅ Selesai mengunduh! File MP3 ada di folder saat ini.${reset}"
