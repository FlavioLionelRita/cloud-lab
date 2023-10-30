# VPC with Ec2 instance

## Create

```bash
terraform apply -auto-approve
```

## Connect

Obtener la IP desde el output de terraform:

```bash
ssh -i ~/.ssh/Terraform.pem ec2-user@18.202.212.248
```

- [web server](http://18.202.212.248)

## Destroy

```bash
terraform destroy -auto-approve
```

## References

- [example](https://www.adictosaltrabajo.com/2020/06/19/primeros-pasos-con-terraform-crear-instancia-ec2-en-aws/)
- [Add AWS credentials in Terraform](https://medium.com/@knoldus/add-aws-credentials-in-terraform-b43efa7b934d)
