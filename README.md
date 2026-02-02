Установка

rm -rf /opt/root/Bird4Static/lists
git clone https://github.com/Hard-3d/KeeneticVPNList.git /opt/root/Bird4Static/lists


Добавить в /opt/root/Bird4Static/scripts/add-bird4_routes.sh
после URLS


git -C /opt/root/Bird4Static/lists pull
