#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[1;32m📥Tunggu sebentar \e[0m"
curl -s https://raw.githubusercontent.com/KeishaPradana/TN_ytmp3-script/main/installTN.sh | bash

echo -e "\e[1;32m📲 Meminta izin penyimpanan\e[0m"

termux-setup-storage
