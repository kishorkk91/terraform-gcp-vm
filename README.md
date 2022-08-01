
#### Make sure we are in the correct folder structure and terraform is configured correctly and connected to GCP using Gcloud
`C:\Users\kkot\Desktop\projects\GCP\terraform-gcp-vm
`
## Terraform commands

#### To initialize a working directory containing Terraform configuration files, downloads the provider plugins & modules and configures the backend store
`terraform init
`
##### To format the all .tf file -> if structure is scaterred or not well formatted
`terraform fmt
`
##### To check validation
`terraform validate
`
##### To see what kind of infrastruture will be created, just like a sample output/template/blueprint
`terraform plan
`
##### To apply configuration  --> type "YES" as confirmation
`terraform apply
`
##### To apply configuration  --> without "YES" as confirmation
`terraform apply -auto-approve
`
##### To destroy infrastruture
`terraform destroy`


