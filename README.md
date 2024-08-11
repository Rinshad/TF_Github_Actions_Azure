### Terraform GitHub Actions
Repository to provision Azure cloud resources with the help of Terraform and GitHub action.


## Diagram
![cloud_video_diagram](https://github.com/user-attachments/assets/036af637-9478-4680-9097-5ca093920e34)

## How it works?
1. Terraform file which contains the code to provision an Azure VM
2. Codes will be pushed to the repository with the help of a Pull Request
3. Github Action workflow files contain all the Terraform actions like Terraform init, plan and apply
4. Terraform use Service principle to authenticate with Azure cloud
5. Service principles are stored in GitHub secrets, so they can be directly used in the workflow file.
6. Github action workflows contain 2 jobs First job performs terraform init and plan and the second job is to perform terraform apply
7. The first job will be triggered if there are any changes in .tf (*.tf, *.tfvars etc )file
8. The second job will be triggered once we merge the pull request to the master.
9. This approach will give us a chance to review the changes that are going to happen in the infrastructure, if there are an unexpected change in the infrastructure then we can cancel the pull request.
