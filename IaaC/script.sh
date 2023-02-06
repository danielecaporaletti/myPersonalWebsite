            #!/bin/bash
            
            sudo apt update
            sudo apt install apache2 -y
            sudo apt install git -y
            sudo mkdir -p /var/www/danielecaporaletti.it/public_html
            sudo chown -R $USER:$USER /var/www/danielecaporaletti.it/public_html
            sudo chmod -R 755 /var/www
            sudo git -C /var/www/danielecaporaletti.it/public_html clone https://github.com/danielecaporaletti/myPersonalWebsite.git
            sudo touch /etc/apache2/sites-available/danielecaporaletti.it.conf
            sudo echo "<VirtualHost *:80>
                    ServerName danielecaporaletti.it
                    ServerAlias www.danielecaporaletti.it
                    ServerAdmin danielecaporaletti1@gmail.com
                    DocumentRoot /var/www/danielecaporaletti.it/public_html
                    ErrorLog ${APACHE_LOG_DIR}/error.log
                    CustomLog ${APACHE_LOG_DIR}/access.log combined
            </VirtualHost> " > /etc/apache2/sites-available/danielecaporaletti.it.conf
            sudo a2ensite danielecaporaletti.it.conf
            sudo a2dissite 000-default.conf
            sudo systemctl restart apache2
            sudo apt install openjdk-11-jdk -y
            sudo curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
            sudo echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
            sudo apt install jenkins -y
            sudo systemctl status apache2
            sudo systemctl status jenkins