provider "google" {
	project = "belajar-cloud-ajitirto"
	credentials = file("sa-belajar.json")
	region = "us-central1"
	zone = "us-central1-c"
}

resource "google_compute_instance" "vm_instance" {
	name = "terraform-instance-belajar"
	machine_type = "e2-micro"

	boot_disk {
		initialize_params {
		   image = "debian-cloud/debian-11"
		}
	}

	network_interface {
	  network = "default"
	  access_config {
		
	  }
	}
  
}

resource "google_compute_network" "vpc_network" {
	name = "terraform-network-belajar"
	auto_create_subnetworks = "true"
  
}



