# microservice1


Explanation
Provider and Terraform Settings: Sets up the required providers and versions.
Resource Group: Creates a resource group for all the resources.
Virtual Network and Subnet: Defines a virtual network and a subnet specifically for the AKS cluster.
AKS Cluster: Provisions an AKS cluster with a system-assigned identity and Calico network policy for enhanced network security and performance.
Azure Container Registry: Optionally, creates an ACR for storing private Docker images.
This script sets up the infrastructure needed for a basic AKS cluster. Depending on your specific application requirements, you might need to add additional configurations such as role-based access control, ingress controllers for routing, or persistent volume claims for storage.

Deployment YAMLs: Define the deployment settings for your backend and frontend applications. This includes the number of replicas, container specifications, and resource limits.
Service YAMLs: Define services to expose your applications. The backend is exposed on port 80, and the frontend is exposed on port 5000, both using a LoadBalancer to allow external access.
Make sure to replace <your_acr_name> with your actual Azure Container Registry name and adjust the image tags as necessary. These files should be placed in a directory (e.g., k8s/) and referenced in your CI/CD pipeline for deployment to AKS.
