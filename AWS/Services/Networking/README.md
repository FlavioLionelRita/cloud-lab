
# Networking

## Vpc

Te permite crear una red virtual aislada en la nube. \
En términos simples, una VPC te permite lanzar recursos de AWS, como instancias de EC2 o bases de datos RDS, en una red virtual.

## Subnet

Una subred es un rango de direcciones IP en tu VPC. \
Puedes lanzar recursos de AWS en una subred específica. Por ejemplo, puedes lanzar instancias de EC2 en una subred pública para que puedan comunicarse directamente con Internet. Las subredes públicas tienen una ruta a Internet a través de una puerta de enlace de Internet. Puedes lanzar instancias de EC2 en una subred privada para que no puedan comunicarse directamente con Internet. Las subredes privadas no tienen una ruta a Internet a través de una puerta de enlace de Internet.

## Route Table

Una tabla de rutas contiene una serie de reglas, llamadas rutas, que se utilizan para determinar dónde se dirigen los paquetes de red. \
Una tabla de rutas se aplica a una o más subredes en una VPC. Cuando un paquete entra en una VPC, AWS realiza una búsqueda en la tabla de rutas de la subred para determinar dónde enrutar el paquete siguiente. Puedes asociar una tabla de rutas con una o más subredes.

### Route

Una ruta es una regla que se utiliza para determinar dónde se dirigen los paquetes de red. \
Te permite definir rutas para dirigir el tráfico de red entre diferentes recursos en tu entorno de Amazon EC2. Puedes especificar el destino de la ruta y el gateway o la instancia a la que debe dirigirse el tráfico.

## Internet Gateway

Un Internet Gateway es un componente que permite que las instancias de EC2 y otros recursos dentro de una VPC se comuniquen con Internet. \
También actúa como una puerta de enlace para permitir que los recursos de Internet se comuniquen con las instancias de EC2 y otros recursos dentro de una VPC.

## Nat Gateway

Un NAT Gateway es un componente que permite que las instancias de EC2 y otros recursos dentro de una VPC se comuniquen con Internet. También actúa como una puerta de enlace para permitir que los recursos de Internet se comuniquen con las instancias de EC2 y otros recursos dentro de una VPC.

## Security Group

Un Security Group es un firewall virtual que controla el tráfico de entrada y salida de una o más instancias de EC2. Cuando se lanza una instancia de EC2, se puede asociar un Security Group con la instancia. Puedes especificar reglas de entrada y salida para el Security Group que controlan el tráfico de red entrante y saliente de la instancia de EC2.

## Network ACL

Un Network ACL es un firewall virtual que controla el tráfico de entrada y salida de una o más subredes. Cuando se lanza una subred, se puede asociar un Network ACL con la subred. Puedes especificar reglas de entrada y salida para el Network ACL que controlan el tráfico de red entrante y saliente de la subred.

## Direct Connect

AWS Direct Connect es una solución de red que proporciona una conexión dedicada y privada desde tu entorno local directamente a Amazon Web Services (AWS). \
En lugar de depender de la conexión a través de Internet pública, Direct Connect establece una conexión de red dedicada, lo que puede ser beneficioso en términos de rendimiento, consistencia y seguridad.

## Route 53

AWS Route 53 es el servicio de Sistema de Nombres de Dominio (DNS) ofrecido por Amazon Web Services (AWS). \
Su nombre, "Route 53", hace referencia al puerto 53, que es el puerto utilizado para el tráfico de DNS. Este servicio proporciona una forma escalable y altamente disponible de dirigir el tráfico de usuarios a aplicaciones web mediante la resolución de nombres de dominio en direcciones IP.

## API Gateway

Un API Gateway (Puerta de enlace para API) en AWS es un servicio que facilita la creación, publicación, mantenimiento, monitoreo y protección de API (Interfaces de Programación de Aplicaciones). \
En términos sencillos, actúa como un punto de entrada para las aplicaciones que desean acceder a datos o funciones de tu backend.

## CloudFront

CloudFront es el servicio de CDN (Red de Distribución de Contenidos) de Amazon Web Services (AWS). \
Su función principal es acelerar la entrega de contenido web estático y dinámico, como imágenes, videos, archivos CSS y HTML, a usuarios finales alrededor del mundo. \
La idea es reducir la latencia y mejorar la velocidad de carga de páginas web al ubicar el contenido más cerca de los usuarios.

## VPC Peering Connection

Una VPC Peering Connection (Conexión de Emparejamiento de VPC) en Amazon Web Services (AWS) es una relación de red entre dos Virtual Private Clouds (VPCs) que permite el enrutamiento de tráfico directo entre ellas utilizando direcciones IP privadas.

## VPN

VPN se refiere a Virtual Private Network (Red Privada Virtual). Una VPN en AWS es una conexión segura que permite la comunicación cifrada entre tu red local y los recursos en la nube de AWS. Esta conexión se establece a través de Internet, pero la información se transmite de manera segura mediante protocolos de cifrado.

## VPC Flow Logs

VPC Flow Logs es una característica de Amazon Web Services (AWS) que te permite capturar información sobre el tráfico de red que fluye dentro y fuera de una Virtual Private Cloud (VPC). \
Esta información se presenta en forma de registros que contienen detalles sobre el tráfico, como direcciones IP de origen y destino, puertos, protocolos y la cantidad de bytes y paquetes.

## Referencias

- [Cómo manejar redes virtuales en la nube](https://www.youtube.com/watch?v=HIcCKT-eTKM&list=PL9T-KKyKXNCmOnsFmS_aWCmvMvd3HCB7b&index=10)
- [Balanceo de Carga ⚖ y Auto Scaling](https://www.youtube.com/watch?v=HPXdwErNahk&list=PL9T-KKyKXNCmOnsFmS_aWCmvMvd3HCB7b&index=11)
