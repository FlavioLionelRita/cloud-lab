# Network ACL

Una Network Access Control List (ACL) es un conjunto de reglas de control de acceso que se aplica a un conjunto de subnets en una Virtual Private Cloud (VPC) de Amazon Web Services (AWS). A diferencia de los Security Groups, que son a nivel de instancia, las Network ACLs operan a nivel de subnet y permiten o deniegan el tráfico de red entrante y saliente en función de estas reglas.

Cada subnet en una VPC puede asociarse con una Network ACL, y una ACL puede asociarse con múltiples subnets. Las reglas en una Network ACL especifican qué tipo de tráfico está permitido o denegado en función de direcciones IP de origen y destino, números de puerto y protocolos.

Es importante destacar que las Network ACLs se evalúan en orden, de arriba a abajo, y se aplican las reglas de la primera que coincida con la condición. Esto es diferente de los Security Groups, que evalúan todas las reglas y permiten el tráfico si alguna regla lo permite y no hay ninguna regla que lo deniegue.

Las Network ACLs son una capa adicional de seguridad en tu entorno de red en la nube, y puedes usarlas para controlar el tráfico de manera más granular que con los Security Groups.

En resumen, una Network ACL en AWS es un conjunto de reglas de control de acceso a nivel de subnet que determina qué tipo de tráfico de red está permitido o denegado en una VPC
