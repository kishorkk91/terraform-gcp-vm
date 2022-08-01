provider "google" {
  // credentials = "${file("service-account.json")}"
  // credentials = file("/downloads/compute-instance.json")
  project = "kaizen-356311"
  region  = "us-central1"
  zone    = "us-central1-c"
}

// Adopt a naming convention --> vm_instance
resource "google_compute_instance" "vm_instance" {
  name         = "my-vm-via-terraform"
  machine_type = "f1-micro"
  hostname     = "devops-vm.com"

  /*  labels = {
    name = my-label
  }*/

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # In default network this VM will be created, However, a custom VPC can also be created.
    network = "default"
    access_config {
      // Ephemeral IP (Everytime VM is rebooted then new IP will be created if reboot of VM is done) BUT our own static IP can also be provided
    }
  }

  // Neccessary if something needs to be installed as soon as VM is VP and Running, here test file will be created under root directory: kk@devops-vm:~$ cd / && kk@devops-vm:~$ cat test.txt
  metadata_startup_script = "touch test.txt && echo 'Welcome to Terraform GCP VM demo Kishor' >> test.txt"
}


