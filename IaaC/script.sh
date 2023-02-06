#!/bin/bash

#INSTALLAZIONE E CONFIGURAZIONE DI APACHE
#apt update
#apt install apache2 -y
#mkdir -p /var/www/danielecaporaletti.it/public_html
#chown -R $USER:$USER /var/www/danielecaporaletti.it/public_html
#chmod -R 777 /var/www
#git -C /var/www/danielecaporaletti.it/public_html clone https://github.com/danielecaporaletti/myPersonalWebsite.git
#wget https://raw.githubusercontent.com/danielecaporaletti/myPersonalWebsite/master/IaaC/danielecaporaletti.it.conf -P /etc/apache2/sites-available/
#a2ensite danielecaporaletti.it.conf
#a2dissite 000-default.conf
#systemctl restart apache2

#INSTALLAZIONE DI JENKINS
echo "install Java"
apt-get update
apt-get install openjdk-11-jre -y
java -version
echo "finish install java"
echo "curl"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | tee /usr/share/keyrings/jenkins-keyring.asc
echo "finish curl"
echo "echo"
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | tee /etc/apt/sources.list.d/jenkins.list
echo "finish echo"
echo "update"
apt-get update
echo "finish echo"
echo "install jenkins"
apt-get install jenkins
echo "finish install jenkins"

#STATUS DEI SERVIZZI
#systemctl status apache2
systemctl status jenkins