# Usage 

https://developer.hashicorp.com/terraform/language/settings/backends/configuration

## Initialize backend state via configuration file
```
terraform init -backend-config=config.s3.tfbackend
```

## Example of use
```
terraform plan -var-file="demo.tfvars" -out=demo.tfplan
terraform show -no-color -json demo.tfplan > demo.tfplan.json
terraform apply -no-color -auto-approve demo.tfplan
terraform output -json > demo.tfoutput.json
```
