terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "4.40.0"
        }
    }
}

provider "google" {
    project = "mywebapp-376811"
    region = "us-east1"
    zone = "us-east1-b"
    credentials = "./G-KEY-mywebapp.json"
}