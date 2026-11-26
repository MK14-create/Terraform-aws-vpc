# Terraform-aws-vpc

This project provisions an AWS Virtual Private Cloud (VPC) using Terraform Infrastructure as Code (IaC).

**Overview**
The purpose of this project is to automate the creation of AWS networking resources using Terraform. The configuration demonstrates how to define cloud infrastructure in code and manage it through version control.

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
*Kiran edini






