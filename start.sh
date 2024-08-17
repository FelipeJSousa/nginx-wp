data_path="./certbot"

echo 'Granting files...'
sudo rm -rf $data_path/*
sudo cp -r /etc/letsencrypt/ $data_path/conf/
sudo cp -r /var/www/certbot $data_path/data/
sudo chmod -R 777 $data_path/*
echo 'Files granted!'

echo "Running main docker-compose"
echo
docker compose down --remove-orphans
docker compose up -d --force-recreate