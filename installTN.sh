#!/data/data/com.termux/files/usr/bin/bash

echo "📦 Menginstall dependensi..."
pkg install -y python ffmpeg
pip install -U yt-dlp

echo "📥 Mengambil TNmp3dl dari GitHub..."
curl -o TNmp3dl https://raw.githubusercontent.com/KeishaPradana/TN_ytmp3-script/main/TN_ytmp3dl

chmod +x TNmp3dl
mv TNmp3dl $PREFIX/bin/

echo "✅ Instalasi selesai!"
echo "🌎 By.TN_KeishaPradana 🛜"
echo "⚠️ Pakai Script dengan bijak ⚠️"
