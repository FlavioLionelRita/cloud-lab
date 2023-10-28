# ECS EFS RDS Wordpress

## Configuración Inicial

- Zona: eu-west-1 (Ireland)
- Create Key Pair: SSH

## Create Network

Create:

```sh
aws cloudformation deploy --template-file ./network/template.yaml --capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND  --stack-name wordpress-network
```

Get outputs:

```sh
aws cloudformation describe-stacks --region eu-west-1 --query "Stacks[?StackName=='wordpress-network'][].Outputs" --no-paginate --output json > ./network/result.json
```

## Create cluster

**Create environment file:**

```sh
cat <<EOF > ./cluster/.env
VPCId=$(jq -r '.[][] | select(.OutputKey=="VPC") | .OutputValue'  ./network/result.json)
PrivateSubnetIds=$(jq -r '.[][] | select(.OutputKey=="PrivateSubnet1") | .OutputValue'  ./network/result.json),$(jq -r '.[][] | select(.OutputKey=="PrivateSubnet2") | .OutputValue'  ./network/result.json)
PublicSubnetIds=$(jq -r '.[][] | select(.OutputKey=="PublicSubnet1") | .OutputValue'  ./network/result.json),$(jq -r '.[][] | select(.OutputKey=="PublicSubnet2") | .OutputValue'  ./network/result.json)
KeyName=SSH
DBUsername=wordpress
DBPassword=wordpress
DatabaseInstanceClass=db.t3.micro
DatabaseAllocatedStorage=20
ECSLogRetentionPeriod=90
EOF
```

**Create cluster:**

```sh
aws cloudformation deploy --template-file ./cluster/template.yaml --capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND --parameter-overrides $(cat ./cluster/.env) --stack-name wordpress-ecs
```

**Get outputs:**

```sh
aws cloudformation describe-stacks --region eu-west-1 --query "Stacks[?StackName=='wordpress-ecs'][].Outputs" --no-paginate --output json > ./cluster/result.json
```

## Wordpress

- host: [http://wordpress-ecs-LB-1719308356.eu-west-1.elb.amazonaws.com]
- username: manager
- password: LvJS2@ABE%lamDs2Hc
- email: [flaviolrita@proton.me]

## Inicializar base de datos

**Conectarse a la instancia EC2:**

```bash
chmod 400 SSH.pem
## connect to EC2 instance
ssh -i "SSH.pem" ec2-user@ec2-34-247-92-153.eu-west-1.compute.amazonaws.com
## connect to RDS instance from EC2 instance
sudo yum install mysql -y
mysql -u wordpress -p -h db-instance.cqmjptrynsxv.eu-west-1.rds.amazonaws.com
wordpress
```

**Create northwind database:**

```sql
CREATE USER IF NOT EXISTS 'northwind'@'%' IDENTIFIED BY 'northwind';
CREATE DATABASE IF NOT EXISTS northwind;
GRANT ALL PRIVILEGES on northwind.* To northwind@'%';
FLUSH PRIVILEGES;
SHOW databases;
exit;
```

**Verify connection to northwind:**

```sh
mysql -u northwind -p -h db-instance.cqmjptrynsxv.eu-west-1.rds.amazonaws.com
northwind
SHOW databases;
exit;
```

**copy and execute sql initialization:**

```sh
scp -i ~/.ssh/SSH.pem ./workspace/northwind-mysql.sql ec2-user@ec2-34-247-92-153.eu-west-1.compute.amazonaws.com:/home/ec2-user
ssh -i ~/.ssh/SSH.pem ec2-user@ec2-34-247-92-153.eu-west-1.compute.amazonaws.com
mysql -h db-instance.cqmjptrynsxv.eu-west-1.rds.amazonaws.com -u northwind -p northwind < northwind-mysql.sql
northwind
# verify
mysql -u northwind -p -h db-instance.cqmjptrynsxv.eu-west-1.rds.amazonaws.com
northwind
use northwind;
show tables;
select count(1) from Orders;
exit;
```

## Subir schema al volume

```sh

```

## Remove

```sh
aws cloudformation delete-stack --stack-name wordpress-ecs && aws cloudformation wait stack-delete-complete --stack-name wordpress-ecs
aws cloudformation delete-stack --stack-name wordpress-network && aws cloudformation wait stack-delete-complete --stack-name wordpress-network
```

## References

- [example](https://github.com/jquirossoto/wordpress-multisite-ecs-efs-rds/blob/master/README.md)
- [fargate example](https://github.com/1Strategy/fargate-cloudformation-example/blob/master/fargate.yaml)
