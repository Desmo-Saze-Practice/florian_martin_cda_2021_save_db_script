# définit le code qui suivra en script
#! /bin/sh

# script.sh va creer une sauvegarde de notre app

# accorder les droits d'execution
# chmod +x script.sh

echo "début de la sauvegarde de notre application"

mkdir backup

cp -r * var/www/html/ backup/

mysqldump -u flo -p wp_cda > backup/data-dump.sql

zip -r data.zip backup

# pour mettre fin a notre script
exit