Установка

<pre>
rm -rf /opt/root/Bird4Static/lists
git clone https://github.com/Hard-3d/KeeneticVPNList.git /opt/root/Bird4Static/lists
</pre>

Добавить в /opt/root/Bird4Static/scripts/add-bird4_routes.sh
после URLS

<pre>
git -C /opt/root/Bird4Static/lists reset --hard && git -C /opt/root/Bird4Static/lists pull
</pre>
