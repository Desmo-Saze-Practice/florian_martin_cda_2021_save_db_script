# définit le code qui suivra en script
#! /bin/sh

# script.sh va creer une sauvegarde de notre app

# accorder les droits d'execution
# chmod +x script.sh

echo "******** SCRIPT STARTING, GET ROLL MA MAN *********"
# une idée
# if (!backup/) {
#     mkdir backup
# }

mkdir backup

cp -avr var/www/html/ backup/

mysqldump -u flo -p wp_cda > backup/data-dump.sql

tar -r data.zip backup

# pour mettre fin a notre script
exit
