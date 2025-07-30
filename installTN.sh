#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[1;34m📦 Menginstall dependensi...\e[0m"
pkg install -y python ffmpeg
pip install -U yt-dlp

echo -e "\e[1;34m📥 Mengambil TNmp3dl dari GitHub...\e[0m"
curl -o TNmp3dl https://raw.githubusercontent.com/KeishaPradana/TN_ytmp3-script/main/TN_ytmp3dl

chmod +x TNmp3dl
mv TNmp3dl $PREFIX/bin/

#!/bin/bash

# Warna
green='\e[1;32m'
blue='\e[1;34m'
red='\e[0;31m'
reset='\e[0m'

# Fungsi cetak tengah
center() {
    teks="$1"
    lebar=$(tput cols)
    panjang=${#teks}
    spasi=$(( (lebar - panjang) / 2 ))
    printf "%*s\e%s%s\e[0m\n" $spasi "" "${2}" "$teks"
}

# Tampilkan pesan
center "✅ Instalasi selesai!" "1;32m"
center "🌍 By.TN_KeishaPradana 📡" "1;34m"
center "⚠️ Pakai Script dengan bijak ⚠️" "0;31m"
center "Mengunduh lagu tanpa izin dari pemilik hak cipta adalah tindakan Ilegal ,Tidak untuk tujuan komersial hanya untuk di dengar pribadi" "1;31m"
