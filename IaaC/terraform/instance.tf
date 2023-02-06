resource "google_compute_instance" "vm-from-terraform" {
    name = "my-personal-webpage"
    machine_type = "e2-micro"
    zone = "us-east1-b"

    tags = ["http-server","https-server"]

    boot_disk {
        auto_delete = true
        device_name = "instance-1"
    initialize_params {
        size = 20
        type = "projects/mywebapp-376811/zones/us-west4-b/diskTypes/pd-standard"
        image = "projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20230131"
        }
    }

    metadata_startup_script = "sudo apt update; sudo apt install apache2 -y; sudo apt install git -y; sudo mkdir -p /var/www/danielecaporaletti.it/public_html; sudo chown -R $USER:$USER /var/www/danielecaporaletti.it/public_html; sudo chmod -R 755 /var/www; sudo git -C /var/www/danielecaporaletti.it/public_html clone https://github.com/danielecaporaletti/myPersonalWebsite.git; sudo git /etc/apache2/sites-available/ clone https://github.com/danielecaporaletti/elimina.git; sudo cp /etc/apache2/sites-available/elimina/danielecaporaletti.it.conf /etc/apache2/sites-available/danielecaporaletti.it.conf; sudo a2ensite danielecaporaletti.it.conf; sudo a2dissite 000-default.conf; sudo systemctl restart apache2; sudo apt install openjdk-11-jdk -y; sudo curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null; sudo echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null; sudo apt install jenkins -y; sudo systemctl status apache2; sudo systemctl status jenkins;"

    network_interface {
        network = "default"
        access_config {
            network_tier = "PREMIUM"
        }
    }

    allow_stopping_for_update = true

    service_account {
    scopes = ["cloud-platform"]
  }

}
# VEDERE COSA HA FATTO LO SCIPT
# sudo journalctl -u google-startup-scripts.service