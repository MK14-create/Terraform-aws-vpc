# Terraform-aws-vpc

This project provisions an AWS Virtual Private Cloud (VPC) using Terraform Infrastructure as Code (IaC).

**Overview**
This Terraform project automates the deployment of AWS networking infrastructure by creating a Virtual Private Cloud (VPC) along with its associated networking components.

The infrastructure includes:

Custom VPC
Public and Private Subnets
Internet Gateway (IGW)
Route Tables
Route Table Associations
Network Routing Configuration

Using Infrastructure as Code (IaC), this project enables consistent, repeatable, and automated provisioning of AWS network resources. The configuration follows Terraform best practices and can be easily modified to support different environments and networking requirements.

This project is ideal for learning Terraform fundamentals, AWS networking concepts, and Infrastructure as Code workflows.

✅ Prerequisites
Before running this project, ensure the following are installed:

Terraform
AWS CLI/VS-Code
Git
AWS Account
Verify installations:

terraform -version
aws --version
git --version

**⚙️ Configure AWS Credentials aws configure Provide:**
AWS Access Key ID
AWS Secret Access Key
Default Region
Output Format

**🚀 Deployment Steps**
1. Clone Repository: git clone https://github.com/<your-username>/terraform-aws-vpc.git
   cd terraform-aws-vpc
2. Initialize Terraform: terraform init
3. Validate Configuration: terraform validate
4. Preview Changes: terraform plan
5. Create Infrastructure: terraform apply --auto-approve

** Destroy Infrastructure**
To remove all resources created by Terraform: terraform destroy

<img width="589" height="155" alt="image" src="https://github.com/user-attachments/assets/a2986307-f483-4654-bfe3-f4d8305ed554" />



**📖 Terraform Files**
provider.tf
Defines the AWS provider and region configuration.
vpc.tf
Contains the VPC resource definition and networking configuration.

**🔒 Files Ignored from Git**
The following files should not be committed:

.terraform/
terraform.tfstate
terraform.tfstate.backup
*.tfvars

**📚 Git Com*ands Used**
Initialize*repository: git init
Add files: git add .
Commit: git commit -m "In*tial Terraform AWS VPC setup"
Connect to GitHub: git re*ote add origin https://github.com/*your-username>/terraform-aws-vpc.git
Pull latestchanges: git pull origin *ain
Push code: git push -u origin main


**🎯 Learning Objectives***
Infrastructure as Code (IaC)
*erraform basics
AWS VPC provisio*ing
Version control using Git an* GitHub


👨‍💻 Author
: Kiran medini






