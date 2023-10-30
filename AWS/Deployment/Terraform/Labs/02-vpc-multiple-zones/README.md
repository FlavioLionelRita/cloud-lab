# VPC multiple zones

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

## Reference

- [example](https://spacelift.io/blog/terraform-aws-vpc)
