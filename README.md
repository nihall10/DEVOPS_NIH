## Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision and manage resources on Microsoft Azure.

The setup includes:

* Resource Group
* Storage Account
* Storage Container

This project follows industry-standard Terraform structure with separation of concerns (backend, variables, outputs, etc.).

---

## Tech Stack used

* Terraform
* Microsoft Azure
* Azure CLI

---

## Project Structure

```
backend.tf        # Remote backend configuration
provider.tf       # Azure provider configuration
main.tf           # Core infrastructure resources
variables.tf      # Input variables
terraform.tfvars  # Variable values
outputs.tf        # Output values
versions.tf       # Provider & Terraform version constraints
.gitignore        # Ignored files (state, secrets)
```

---

## Infrastructure Created

### 1. Resource Group

* Acts as a logical container for Azure resources

### 2. Storage Account

* Used for storing data and Terraform remote state

### 3. Storage Container

* Blob container used for storing Terraform state files

---

## Remote Backend

Terraform state is stored remotely in Azure Storage Account for:

* Team collaboration
* State locking
* Security

---

##  How to Run This Project

### Step 1: Login to Azure

```
az login
```

### Step 2: Initialize Terraform

```
terraform init
```

### Step 3: Preview Changes

```
terraform plan
```

### Step 4: Apply Changes

```
terraform apply
```

---

##  Cleanup Resources (Not recommended at all)

To destroy all resources:

**Please do not execute destroy as this is created for my portfolio**
```
terraform destroy
```

---

##  Key Learnings

* Implemented Terraform remote backend in Azure
* Managed infrastructure using modular and scalable approach
* Understood Terraform state management and dependency handling
* Applied best practices like variable separation and secure configuration

---

##  Important Notes

* Storage account name must be globally unique
* Backend resources must be created before running `terraform init`
* Never commit `.tfstate` files to GitHub

---

## Future Enhancements

* Add multiple environments (dev/prod)
* Implement Terraform modules
* Integrate CI/CD pipeline (GitHub Actions / Azure DevOps)
* Deploy containerized application using Docker

---

## 👨‍💻 Author

Nihal Verma
DevOps & Backend Enthusiast

---

## ⭐ Why This Project?

This project demonstrates hands-on experience with Terraform and Azure, focusing on real-world DevOps practices like remote state management, infrastructure automation, and scalable design.
