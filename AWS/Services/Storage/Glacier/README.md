# Amazon Glacier

Es un servicio de almacenamiento en la nube de Amazon Web Services (AWS) diseñado específicamente para el almacenamiento a largo plazo y la archivado de datos. Está optimizado para datos que no se acceden con frecuencia y para los cuales los tiempos de recuperación rápidos no son críticos. Glacier ofrece una solución de almacenamiento de bajo costo para datos que no necesitan estar disponibles de forma inmediata.

Aquí hay algunas características clave de Amazon Glacier:

1. Almacenamiento de Bajo Costo: Glacier ofrece tarifas de almacenamiento más bajas en comparación con otros servicios de almacenamiento de AWS, lo que lo hace ideal para datos que no se necesitan con frecuencia.

1. Recuperación Bajo Demanda: A diferencia de otros servicios de almacenamiento en AWS, Glacier está diseñado para recuperaciones bajo demanda. La recuperación de datos puede llevar varias horas.

1. Durabilidad Elevada: Glacier está diseñado para ser altamente duradero, y los datos se almacenan de forma redundante en múltiples ubicaciones para garantizar la integridad y disponibilidad a largo plazo.

1. Control de Retención: Puedes configurar políticas de retención para especificar cuánto tiempo debe almacenarse cada objeto en Glacier antes de ser eliminado.

1. Capacidad de Archivado: Es adecuado para archivar grandes cantidades de datos, como copias de seguridad, archivos de registro y datos históricos.

1. Cifrado Automático: Glacier cifra automáticamente todos los datos en reposo para garantizar la seguridad de los datos archivados.

1. Integración con Otros Servicios: Puedes integrar Glacier con otros servicios de AWS, como Amazon S3, para gestionar de forma eficiente el ciclo de vida de tus datos.

Es importante tener en cuenta que, debido a su modelo de recuperación bajo demanda, Glacier es más adecuado para datos que no se necesitan con frecuencia y para los cuales los tiempos de recuperación más lentos son aceptables.
