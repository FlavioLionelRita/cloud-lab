# Lab 01 - CloudFormation

## Configuración Inicial

Zona: eu-west-1 (Ireland)

## Pasos Previos

**Crear KeyPair:**

- [Create key pairs](https://eu-west-1.console.aws.amazon.com/ec2/home?region=eu-west-1#KeyPairs:)

## Parámetros

- KeyName: SSH

## Conectarse a la instancia EC2

```bash
ssh -i ~/.ssh/SSH.pem ec2-user@ec2-3-253-136-129.eu-west-1.compute.amazonaws.com
```

Error:

```txt
The security group 'WebServerSecurityGroup' does not exist in default VPC 'vpc-06dd0cf5353d4b39e' (Service: AmazonEC2; Status Code: 400; Error Code: InvalidGroup.NotFound; Request ID: 57ad92e7-a95a-42f0-8a30-61f510423859; Proxy: null)
```

## Plan

- Crear un EC2 para poder conectarse por SSH y hacer pruebas con los diferentes servicios de AWS.
- Crear una instancia de MySQL en RDS.
- Habilitar el acceso a la instancia de MySQL desde la instancia EC2.
- Probar la conexión a MySQL desde la instancia EC2.

## References

- [Introducción a CloudFormation](https://www.youtube.com/watch?v=u4qwcztXhDs)
- [Guía introducción a cloud formation](https://github.com/juanfe2793/Templates-AWS-IaC/blob/master/Guides/GuiaIntroduction-CloudFormation.md)
- [AWS Labs](https://github.com/awslabs/aws-cloudformation-templates/blob/master/aws/services/EC2/EC2InstanceWithSecurityGroupSample.yaml)
