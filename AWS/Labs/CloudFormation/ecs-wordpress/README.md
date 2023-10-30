# ECS EFS RDS Wordpress

## Configuración Inicial

Zona: eu-west-1 (Ireland)

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
PrivateSubnetIds=$(jq -r '.[][] | select(.OutputKey=="PublicSubnet1") | .OutputValue'  ./network/result.json),$(jq -r '.[][] | select(.OutputKey=="PublicSubnet2") | .OutputValue'  ./network/result.json)
PublicSubnetIds=$(jq -r '.[][] | select(.OutputKey=="PrivateSubnet1") | .OutputValue'  ./network/result.json),$(jq -r '.[][] | select(.OutputKey=="PrivateSubnet2") | .OutputValue'  ./network/result.json)
DatabaseInstanceClass=db.t3.micro
DatabaseAllocatedStorage=20
DatabaseMaxAllocatedStorage=40
DatabaseBackupRetentionPeriod=5
EnableDatabaseMultiAZ=Yes
EnableDatabaseReadReplica=Yes
DatabaseCredentialsRotationSchedule=30
EnableEFSAutomaticBackups=Yes
EFSPerformanceMode=generalPurpose
EFSThroughputMode=bursting
EFSProvisionedThroughput=
CustomDomain=
CustomDomainCertificateARN=
ECSTaskvCPU=.5
ECSTaskMemory=3072
ECSLogRetentionPeriod=90
ECSServiceAutoScalingMetric=AverageCPUUtilization
ECSServiceAutoScalingTargetValue=80
ECSServiceAutoScalingTargetMinCapacity=1
ECSServiceAutoScalingTargetMaxCapacity=2
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

## Errors

Error on ECSService:

```txt
Tarea detenida en: 2023-10-15T14:29:49.532Z
ResourceInitializationError: unable to pull secrets or registry auth: execution resource retrieval failed: unable to retrieve secret from asm: service call has been retried 5 time(s): failed to fetch secret arn:aws:secretsmanager:eu-west-1:463621272105:secret:rds-db-credentials/wordpress-ecs-b2fPcF from secrets manager: RequestCanceled: request context canceled caused by: context deadline exceeded. Please check your task network configuration
```

## Remove

```sh
aws cloudformation delete-stack --stack-name wordpress-ecs && aws cloudformation wait stack-delete-complete --stack-name wordpress-ecs
aws cloudformation delete-stack --stack-name wordpress-network && aws cloudformation wait stack-delete-complete --stack-name wordpress-network
```

## References

- [example](https://github.com/jquirossoto/wordpress-multisite-ecs-efs-rds/blob/master/README.md)
