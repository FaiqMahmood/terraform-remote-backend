# Terraform Project: AWS Infrastructure Deployment

This Terraform project automates the provisioning of resources on AWS, including an S3 bucket for remote state storage and a DynamoDB table for locking. This README provides guidance on how to use and configure the project.

## Prerequisites

Before running this Terraform project, ensure you have:

- An AWS account with appropriate permissions to create resources.
- Installed Terraform on your local machine.

## Configuration

1. Clone this repository to your local machine.
2. Navigate to the directory containing the Terraform configuration files.

## Usage

Follow these steps to deploy the infrastructure using Terraform:

1. **Configuration Update**:

   - Open `main.tf` and update the following placeholders:
     - `ami`: Replace with the desired Amazon Machine Image (AMI) ID.
     - `subnet_id`: Replace with the appropriate subnet ID.
     - `bucket`: Replace with a unique name for the S3 bucket.

2. **Initial Deployment**:

   - Comment out the backend configuration in `backend.tf`.
   - Run `terraform init` to initialize the working directory.
   - Execute `terraform apply` to create the infrastructure.
   - Confirm the creation of resources when prompted.

3. **Update Backend Configuration**:

   - Uncomment the backend configuration in `backend.tf`.
   - Update the `bucket` field with the same bucket name used in step 1.
   - Update the `dynamodb_table` field with the name of the DynamoDB table created during step 2.

4. **Re-initialize Terraform**:

   - Run `terraform init` again to configure the remote backend.
   - Confirm when prompted.

5. **Apply Changes**:

   - Execute `terraform apply` to apply any further changes to the infrastructure.
   - Review and confirm the planned actions.

## Cleanup

To remove the deployed resources and clean up:

1. Run `terraform destroy`.
2. Confirm the destruction of resources when prompted.

## Note

- The use of a DynamoDB table for locking ensures safe concurrent access to the Terraform state when multiple users are working on the same project.
- Always exercise caution when making changes to infrastructure. Double-check configurations and confirm actions before proceeding.

By following these steps, you can effectively deploy and manage AWS infrastructure using Terraform with remote state storage and locking mechanisms.
