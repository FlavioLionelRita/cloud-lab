# VPC multiple zones

## Goal

- Create dev and prod environments.
- Dev environment with 1 VPC, 1 public subnet and 1 private subnet in 1 availability zone.
- Prod environment with 1 VPC, 2 public subnets and 2 private subnets in 2 availability zones.
- Use modules for vpc and security groups.

## Create

Initialize terraform:

```bash
terraform init
```

## Dev environment

Show plan:

```bash
terraform plan -var-file=dev.tfvars
```

Apply plan:

```bash
terraform apply -auto-approve -var-file=dev.tfvars
```

Destroy:

```bash
terraform destroy -auto-approve -var-file=dev.tfvars
```

## Prod environment

Show plan:

```bash
terraform plan -var-file=prod.tfvars
```

Apply plan:

```bash
terraform apply -auto-approve -var-file=prod.tfvars
```

Destroy:

```bash
terraform destroy -auto-approve -var-file=prod.tfvars
```

## Connect

Obtener la IP desde el output de terraform:

```bash
ssh -i ~/.ssh/Terraform.pem ec2-user@34.255.217.5
```

- [web server](http://34.255.217.5)

## Reference

- [modules for aws provider](https://registry.terraform.io/browse/modules?provider=aws)
