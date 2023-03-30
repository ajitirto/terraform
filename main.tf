provider "google" {
	project = "belajar-cloud-ajitirto"
	region = "us-central1"
	zone = "us-central1-c"
}

resource "google_compute_instance" "vm_instance" {
	name = "terraform-instance"
	machine_type = "e2-micro"

	boot_disk {
		initialize_params {
		   image = "debian-cloud/debian"
		}
	}

	network_interface {
	  network = "default"
	  access_config {
		
	  }
	}
  
}

resource "google_compute-network" "vpc_network" {
	name = "terraform-network"
	auto_create_subnetworks = "true"
  
}

