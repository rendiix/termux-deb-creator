#!/data/data/com.termux/files/usr/bin/bash
# © Rendiix <vanzdobz@gmail.com>
# Author     : Rendiix <vanzdobz@gmail.com>
# Diedit pada: 23.07.2021 14:14:29

arch=$(dpkg --print-architecture)
tag=$(curl -s "https://api.github.com/repos/rendiix/termux-deb-creator/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
url="https://github.com/rendiix/termux-deb-creator/releases/download/$tag/cdeb-$tag-$arch.deb"
curl --connect-timeout 10 -LO "$url"
apt install ./cdeb-$tag-$arch.deb
rm ./cdeb-$tag-$arch.deb
