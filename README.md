# nueva-distro

Para los que quieran vigilar el lanzamiento de Deepin 20.

Ejecuten los siguientes comandos.

`cd ~/`

`wget https://raw.githubusercontent.com/igatjens/nueva-distro/master/nuevadistro.sh`

`chmod +x ~/nuevadistro.sh`

`echo "*/15 * * * * ~/nuevadistro.sh" | sudo tee -a /var/spool/cron/crontabs/$(whoami)`

`sudo service cron restart`

Esto descarga un script que revisa cada 15 minutos si ya agregaron apricot al repositorio principal de Deepin (http://packages.deepin.com/deepin/dists/).

Para dejar de ejecutar el script en cron, ejecutan

`crontab -e`

Y borran la línea

`*/15 * * * * ~/nuevadistro.sh`
