module "network" {
    source              = "Azure/network/azurerm"
    resource_group_name = "myapp"
    location            = "australiaeast"
    address_space       = "10.0.0.0/16"
    subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    subnet_names        = ["subnet1", "subnet2", "subnet3"]

    tags                = {
                            environment = "prod"
                            costcenter  = "it"
                            owner  = "beca"

                          }
}

module "network" {
    source              = "Azure/network/azurerm"
    resource_group_name = "myapp-2"
    location            = "australiaeast"
    address_space       = "10.0.0.0/16"
    subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    subnet_names        = ["subnet1", "subnet2", "subnet3"]

    tags                = {
                            environment = "non-prod"
                            costcenter  = "it"
                            owner  = "beca"

                          }
}