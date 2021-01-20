# Azure Machine Learning Enterprise Terraform Module

This module rolls out a complete Azure Machine Learning enterprise enviroment.

![Deployed resources](https://github.com/kaparora/terraform-azure-machine-learning/blob/main/media/architecture_aml_pl.png?raw=true)

This includes rollout of the following resources:

* Azure Machine Learning Workspace with Private Link
* Azure Storage Account with VNET binding (using Service Endpoints) and Private Link for Blob and File
* Azure Key Vault with VNET binding (using Service Endpoints) and Private Link
* Azure Container Registry
* Azure Application Insights
* Virtual Network
* Jumphost (Windows) for testing
* (Azure Kubernetes Service - disabled by default and still under development)

**Sample usage:**

```
module "machine-learning" {
  source  = "app.terraform.io/kapil-org/machine-learning/azure"
  version = "0.0.3"
  location = westeurope
  resource_group = "aml-demo"
}
```
