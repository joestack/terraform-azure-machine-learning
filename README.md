# Azure Machine Learning Enterprise Terraform Example

This repo shows an example for rolling out a complete Azure Machine Learning enterprise enviroment via Terraform.

![Deployed resources](https://github.com/kaparora/terraform-azure-machine-learning/blob/main/media/architecture_aml_pl.png)

This includes rollout of the following resources:

* Azure Machine Learning Workspace with Private Link
* Azure Storage Account with VNET binding (using Service Endpoints) and Private Link for Blob and File
* Azure Key Vault with VNET binding (using Service Endpoints) and Private Link
* Azure Container Registry
* Azure Application Insights
* Virtual Network
* Jumphost (Windows) for testing
* (Azure Kubernetes Service - disabled by default and still under development)

## Instructions

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
1. Update `terraform.tfvars` with your desired values
2. Run Terraform
    ```console
    $ terraform init
    $ terraform plan
    $ terraform apply
    ```

If you want to deploy AKS, you need to have [Azure Machine Learning CLI installed](https://docs.microsoft.com/en-us/azure/machine-learning/reference-azure-machine-learning-cli).

# Known Limitations

* Still need to update `Default Datastore` to use Managed Identity of the Studio UI data access

# Important Notes

* The fileshare used for Compute Instances will be automatically provisioned with the first Compute Instance
