   name: 'Terraform'

   on:
     push:
       branches:
         - main
     pull_request:

   jobs:
     terraform:
       runs-on: ubuntu-latest
       steps:
       - name: Checkout code
         uses: actions/checkout@v2

       - name: Setup Terraform
         uses: hashicorp/setup-terraform@v1

       - name: Terraform Init
         run: terraform init

       - name: Terraform Plan
         run: terraform plan

       - name: Terraform Apply
         run: terraform apply -auto-approve
