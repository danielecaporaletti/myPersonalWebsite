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

    metadata_startup_script = "wget https://raw.githubusercontent.com/danielecaporaletti/myPersonalWebsite/master/IaaC/script.sh; chmod +x script.sh; sudo ./script.sh; rm -r script.sh;"

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