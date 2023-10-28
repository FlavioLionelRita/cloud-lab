# Amazon EBS o Amazon Elastic Block Store

Es un servicio de almacenamiento en bloque proporcionado por Amazon Web Services (AWS) que permite a las instancias de Amazon EC2 acceder a volúmenes de almacenamiento en bloque de manera similar a cómo acceden a un disco duro. EBS proporciona almacenamiento persistente y de alto rendimiento que se puede adjuntar y desmontar de instancias de EC2 según sea necesario.

Algunas características clave de Amazon EBS son:

1. Almacenamiento Persistente: EBS ofrece almacenamiento persistente que persiste más allá de la vida útil de una instancia de EC2. Puedes detener y reiniciar instancias sin perder los datos almacenados en los volúmenes de EBS.

1. Tipos de Volúmenes: EBS proporciona diferentes tipos de volúmenes para adaptarse a diversos casos de uso, incluyendo volúmenes de propósito general (SSD), volúmenes de rendimiento optimizado (SSD), volúmenes fríos (HDD), y volúmenes magnéticos (HDD).

1. Rendimiento Ajustable: Puedes ajustar el rendimiento de los volúmenes de EBS eligiendo el tipo adecuado según tus necesidades de IOPS (operaciones de entrada/salida por segundo) y ancho de banda.

1. Cifrado de Datos en Reposo: EBS ofrece la opción de cifrar los datos en reposo en los volúmenes mediante AWS Key Management Service (KMS).

1. Instantáneas: Puedes crear instantáneas de volúmenes de EBS, lo que proporciona una copia incremental de los datos en el momento de la instantánea. Estas instantáneas se pueden utilizar para crear nuevos volúmenes o como copias de seguridad.

1. Escalabilidad: Puedes cambiar el tamaño de los volúmenes de EBS y ajustar la capacidad y el rendimiento según sea necesario.

1. Integración con EC2: EBS se integra estrechamente con las instancias de EC2 y se utiliza comúnmente para almacenar sistemas de archivos, bases de datos y otros datos persistentes.

1. Uso en Arquitecturas de Alta Disponibilidad: EBS es comúnmente utilizado en arquitecturas de alta disponibilidad y escalabilidad, donde se requiere almacenamiento persistente y confiable.

En resumen, Amazon EBS es un componente esencial para almacenar y acceder a datos persistentes en entornos de AWS, especialmente en conjunción con instancias de Amazon EC2

## Referencias

- [Volumen AWS EBS ¿ que son EBS y para que sirve y sus características ?](https://www.youtube.com/watch?v=n0qRKfAnbOs)
