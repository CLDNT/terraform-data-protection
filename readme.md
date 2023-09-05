# AWS GuardDuty with Terraform for Sensitive Data Protection

This guide will help you set up AWS GuardDuty for Sensitive Data Protection using Terraform. AWS GuardDuty is a managed threat detection service that continuously monitors for malicious or unauthorized behavior in your AWS environment.

## Prerequisites

Before you begin, ensure you have the following:

1. [Terraform](https://www.terraform.io/) installed on your local machine.
2. AWS access credentials configured (e.g., AWS CLI credentials).

## Getting Started

1. Clone this repository:

   ```shell
   git clone <repository-url>
   cd <repository-folder>
2. Initialize Terraform:
    terraform init
3. Configure your AWS provider. Create a provider.tf file with your AWS region and credentials:
    provider "aws" {
  region = "us-east-1" # Change to your desired AWS region
}
4. Modify the Terraform configuration files as needed to match your specific requirements. Key parts include:

    Enabling specific GuardDuty finding types related to Sensitive Data Protection.
    Configuring SNS topics for notifications.
    Creating an S3 bucket to store GuardDuty findings.
    Defining a KMS key policy to control access to the key.
5. Plan your Terraform changes:
    terraform plan

6. Apply the changes to create AWS GuardDuty and related resources:
    terraform apply
7.     Review the changes and confirm the apply operation.

Customization

You can customize the Terraform configuration to meet your specific needs. Make sure to replace placeholder values with your actual AWS account IDs, resource names, and other relevant details.

