Установка

Ставим Bird4Static
https://github.com/DennoN-RUS/Bird4Static/wiki/%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0

Далее

<pre>
rm -rf /opt/root/Bird4Static/lists
git clone https://github.com/Hard-3d/KeeneticVPNList.git /opt/root/Bird4Static/lists
</pre>

Добавить в /opt/root/Bird4Static/scripts/add-bird4_routes.sh
после URLS

<pre>
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
</pre>
