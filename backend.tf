terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "burkey"
    workspaces {
      name = "azure-module-compute-demo"
    }
  }
}