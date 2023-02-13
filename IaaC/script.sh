#!/bin/bash

#INSTALLAZIONE E CONFIGURAZIONE DI APACHE
apt update
apt install apache2 -y
mkdir -p /var/www/danielecaporaletti.it/public_html
chown -R $USER:$USER /var/www/danielecaporaletti.it/public_html
chmod -R 777 /var/www
git -C /var/www/danielecaporaletti.it/public_html clone https://github.com/danielecaporaletti/myPersonalWebsite.git
wget https://raw.githubusercontent.com/danielecaporaletti/myPersonalWebsite/master/IaaC/danielecaporaletti.it.conf -P /etc/apache2/sites-available/
a2ensite danielecaporaletti.it.conf
a2dissite 000-default.conf
systemctl restart apache2

#INSTALLAZIONE DI JENKINS
apt-get update
apt-get install openjdk-11-jre -y
java -version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | tee /usr/share/keyrings/jenkins-keyring.asc
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | tee /etc/apt/sources.list.d/jenkins.list
apt-get update
apt-get install jenkins -y

#STATUS DEI SERVIZZI
systemctl status apache2
systemctl status jenkins

sudo journalctl -u google-startup-scripts.service > /home/exec.txt
