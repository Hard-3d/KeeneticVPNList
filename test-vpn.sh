 #SCRIPT VARIABE
HOMEPATH=/opt/root/Bird4Static

source $HOMEPATH/scripts/func.sh

# Защита от маршрута по умолчанию
FILE="/opt/etc/bird4-force-vpn1.list"
# Проверяем, существует ли файл
if [ -f "$FILE" ]; then
    # Ищем строку 0.0.0.0/0
    if grep -q "0.0.0.0/0" "$FILE"; then
        rm -f "$FILE"
        restart_bird_func
    fi
fi

# Обновление списков
git -C /opt/root/Bird4Static/lists reset --hard && git -C /opt/root/Bird4Static/lists pull
