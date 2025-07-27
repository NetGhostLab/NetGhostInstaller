
#!/bin/bash

# ───── NetGhost GrayHat Setup ─────
# Автор: @netghost_lab

clear
echo -e "\e[1;31m"
figlet "NetGhost"
echo -e "\e[0m"
echo -e "🧠  Инсталлер CLI-тулов | GrayHat Edition"
echo -e "📡  Канал: https://t.me/netghost_lab"
echo -e "────────────────────────────────────────────"

# Функция меню
function show_menu() {
    echo -e "\nВыбери номер инструмента для установки:"
    echo "  [1] Nmap"
    echo "  [2] RustScan"
    echo "  [3] FFUF"
    echo "  [4] Amass"
    echo "  [5] Impacket"
    echo "  [6] Visual Tools (cowsay, figlet, lolcat)"
    echo "  [7] Доп. софт (neofetch, curl, python)"
    echo "  [0] Выход"
    echo -n $'\nТвой выбор: '
}

# Цикл выбора
while true; do
    show_menu
    read choice
    case $choice in
        1)
            echo "[+] Установка Nmap..."
            pkg install nmap -y
            ;;
        2)
            echo "[+] Установка RustScan..."
            pkg install rust -y
            cargo install rustscan
            echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
            source ~/.bashrc
            ;;
        3)
            echo "[+] Установка FFUF..."
            pkg install go -y
            go install github.com/ffuf/ffuf/v2@latest
            echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.bashrc
            source ~/.bashrc
            ;;
        4)
            echo "[+] Установка Amass..."
            pkg install amass -y
            ;;
        5)
            echo "[+] Установка Impacket..."
            pkg install python git -y
            git clone https://github.com/fortra/impacket.git
            cd impacket
            pip install .
            cd ..
            ;;
        6)
            echo "[+] Установка визуального оформления..."
            pkg install cowsay figlet toilet lolcat fortune -y
            ;;
        7)
            echo "[+] Установка системного софта..."
            pkg install curl neofetch python -y
            ;;
        0)
            echo -e "\n👻  Уходишь в тень. Подпишись на @netghost_lab"
            exit 0
            ;;
        *)
            echo "⚠️ Неверный ввод. Попробуй снова."
            ;;
    esac
done
