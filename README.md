# blockchain-analyzer
Repository contains the Application for fetching the balance of an Ethereum Address.

# Goals
1. Deploy the existing code for a Web Application that displays balance from the Ethereum blockchain.
2. The Application’s dockerfile should be built and the Image and pushed to ECR or Docker Hub.
3. The Application should be deployed on AWS Cloud Platform.

# Demo
- Prepare for a live demonstration, which will include
    - Issuing a call to the API
    - Coding a new feature
    - Deploying the new feature through your CI/CD pipeline

# Setup
1. Clone the Repo.
2. Ensure that Docker is installed and running. To build the application container and push to ECR, execute the following commands
    - ```cd blockchain-analyzer```
    - ```docker build -t $IMAGE_REPO:IMAGE_TAG .```
    - ```docker push $IMAGE_REPO:IMAGE_TAG```
3. Review the default input variables present in the file ```terraform/terraform.tfvars```
4. Create a S3 bucket in AWS Account and update the value in the file ```terraform/backend.tf```
5. Ensure you have configured access to your AWS account using the ```aws configure``` command. 
6. Create a SSM parameter for storing the API_KEY. The name of the parameter will be ```infura_api_key```.
6. Run the Terraform using the following commands
    - ```cd terraform```
    - ```terraform init```
    - ```terraform plan```
    - ```terraform apply```
7. To clean up the deployment from your AWS Account, run the following command
    - ```terraform destroy```

# Directory Structure
```
.
├── Dockerfile                  # Dockerfile the generate the Application Container.
├── README.md                   # This README.
├── .github/workflows           # Github Actions workflow folder.
│   └── image-creator.yml       # The build file for Github Actions.
├── build                       # The build folder.
│   └── version_update.sh       # Updates Repo Tags.
├── requirements.in             # Defines the direct dependencies. 
├── requirements.txt            # External Python packages and their versions.
├── src                         # Source code of the application. 
│   ├── blockexplorer.py
│   └── lib
│       ├── constants.py
│       ├── infura.py
│       └── utils.py
├── terraform                   # Terraform for deploying the application in AWS.
│   ├── backend.tf              # Defines the remote backend for storing the statefile.
│   ├── main.tf                 # Main Terraform file which deploys the diffent modules. 
│   ├── modules
│   │   ├── alarms              # Module deploys all the alerts for the different metrics. 
│   │   │   ├── alarms.tf
│   │   │   ├── outputs.tf
│   │   │   └── variables.tf
│   │   ├── ecs                 # Module deploys the ECS stack. 
│   │   │   ├── ecs.tf
│   │   │   ├── outputs.tf
│   │   │   └── variables.tf
│   │   └── networking          # Module deploys the Networking stack.
│   │       ├── networking.tf
│   │       ├── outputs.tf
│   │       └── variables.tf
│   ├── providers.tf            # Required Providers.
│   ├── terraform.tfvars        # Default variables list.
│   └── variables.tf            # Input Variables.
```
