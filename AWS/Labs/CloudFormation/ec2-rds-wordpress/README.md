# Lab Wordpress

## Configuración Inicial

Zona: eu-west-1 (Ireland)

## Pasos Previos

**Crear KeyPair:**

- [Create key pairs](https://eu-west-1.console.aws.amazon.com/ec2/home?region=eu-west-1#KeyPairs:)

## Parámetros

- name: labWordpress
- DBAllocatedStorage: 5
- DBClass: db.t2.micro
- DBName: wordpress
- DBPassword: wordpress
- DBUser: wordpress
- InstanceType: t2.small
- KeyName: cloudFormationLabWordPress
- MultiAZDatabase: false
- SSHLocation: 0.0.0.0/0

## Conectarse a la instancia EC2

```bash
ssh -i ~/.ssh/SSH.pem ec2-user@ec2-52-49-30-194.eu-west-1.compute.amazonaws.com
```

## References

- [Introducción a CloudFormation](https://www.youtube.com/watch?v=u4qwcztXhDs)
- [Guía introducción a cloud formation](https://github.com/juanfe2793/Templates-AWS-IaC/blob/master/Guides/GuiaIntroduction-CloudFormation.md)
- [AWS Labs](https://github.com/awslabs/aws-cloudformation-templates/blob/master/aws/services/EC2/EC2InstanceWithSecurityGroupSample.yaml)
