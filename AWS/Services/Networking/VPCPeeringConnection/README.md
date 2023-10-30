# VPC Peering Connection

Una VPC Peering Connection (Conexión de Emparejamiento de VPC) en Amazon Web Services (AWS) es una relación de red entre dos Virtual Private Clouds (VPCs) que permite el enrutamiento de tráfico directo entre ellas utilizando direcciones IP privadas.

Cuando estableces una conexión de emparejamiento de VPC, las instancias en ambas VPC pueden comunicarse entre sí como si estuvieran en la misma red, incluso si pertenecen a cuentas de AWS diferentes. Esto facilita la colaboración y la integración entre recursos en diferentes entornos de nube virtual.

Es importante tener en cuenta que las VPCs emparejadas no comparten el mismo espacio de direcciones IP; cada VPC mantiene su propio rango de direcciones IP privadas. Sin embargo, mediante la conexión de emparejamiento de VPC, AWS configura automáticamente el enrutamiento para permitir que las instancias en ambas VPCs se comuniquen directamente.

Algunos puntos clave sobre VPC Peering Connection:

- **Comunicación bidireccional:** Una vez establecida la conexión de emparejamiento, el tráfico puede fluir en ambas direcciones entre las VPCs emparejadas.

- **No transitive:** El emparejamiento de VPC no es transitivo, lo que significa que si tienes una conexión de VPC A a B y otra de B a C, no puedes comunicar directamente las VPCs A y C a través de esta configuración.

- **Puede ser entre cuentas diferentes:** Puedes emparejar VPCs entre cuentas de AWS diferentes, siempre y cuando ambas partes acepten la solicitud de emparejamiento.

- **Seguridad:** El tráfico entre las VPCs emparejadas se controla mediante las reglas de Security Groups y Network ACLs.

En resumen, una VPC Peering Connection en AWS es una conexión que permite la comunicación directa y segura entre dos VPCs, facilitando la colaboración entre recursos en entornos de nube virtual separados.
