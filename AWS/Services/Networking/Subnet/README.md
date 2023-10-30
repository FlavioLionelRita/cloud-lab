# Subnet

Una Subnet (subred) es una porción de una red más grande (generalmente dentro de una Virtual Private Cloud o VPC) que ha sido subdividida en segmentos más pequeños. Cada subnet es una red lógica que opera dentro de una VPC y tiene su propio rango de direcciones IP.

Algunos puntos clave sobre las subnets en AWS:

- **Dentro de una VPC:** Una VPC es una red virtual en la nube que puedes configurar en AWS. Dentro de esta VPC, puedes crear subnets para organizar y segmentar tu infraestructura.

- **Rangos de Direcciones IP:** Cada subnet tiene un rango de direcciones IP asociado, especificado en formato CIDR (Classless Inter-Domain Routing). Por ejemplo, una subnet podría tener el rango 10.0.1.0/24, lo que significa que tiene 256 direcciones IP disponibles.

- **Ubicación en Zonas de Disponibilidad:** Las subnets en una VPC se pueden distribuir en múltiples Zonas de Disponibilidad (Availability Zones) para mejorar la resiliencia y la disponibilidad de tus aplicaciones.

- **Asociación con Route Tables:** Cada subnet está asociada con una tabla de ruteo (Route Table) que determina cómo se enruta el tráfico desde las instancias en esa subnet.

- **Seguridad a Nivel de Subnet:** Las reglas de Network ACLs y Security Groups se aplican a nivel de subnet. Puedes controlar el tráfico a nivel de subnet para mejorar la seguridad.

- **Diferentes Propósitos:** Puedes crear subnets con diferentes propósitos, como subnets públicas para recursos que necesitan acceso directo a Internet y subnets privadas para recursos que deben estar detrás de un NAT Gateway o no deben tener acceso directo a Internet.

En resumen, una subnet en AWS es una división lógica de una VPC que tiene su propio rango de direcciones IP y se puede ubicar en diferentes Zonas de Disponibilidad. Las subnets son fundamentales para organizar y segmentar la infraestructura en la nube de manera eficiente.
