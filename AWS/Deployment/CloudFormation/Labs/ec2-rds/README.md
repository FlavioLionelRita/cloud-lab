# ECR with RDS

## Configuración Inicial

Zona: eu-west-1 (Ireland)

## Parámetros

- KeyName: SSH

## Conectarse a la instancia EC2

```bash
chmod 400 SSH.pem
# move SSH.pem to ~/.ssh/
sudo mv SSH.pem ~/.ssh/
## connect to EC2 instance
ssh -i ~/.ssh/SSH.pem ec2-user@ec2-3-253-136-129.eu-west-1.compute.amazonaws.com
## connect to RDS instance from EC2 instance
sudo yum install mysql
mysql -u admin -p myDB -h lab-dbinstance.cqmjptrynsxv.eu-west-1.rds.amazonaws.com
admin123
```

## References

- [example](https://github.com/hsiddhu2/learn-aws-labs/blob/main/Intermediate/Create%20a%20CloudFormation%20Template%20For%20WebApp/template.yml)