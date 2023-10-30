# VPC Flow Logs

VPC Flow Logs es una característica de Amazon Web Services (AWS) que te permite capturar información sobre el tráfico de red que fluye dentro y fuera de una Virtual Private Cloud (VPC). Esta información se presenta en forma de registros que contienen detalles sobre el tráfico, como direcciones IP de origen y destino, puertos, protocolos y la cantidad de bytes y paquetes.

Algunos aspectos clave de VPC Flow Logs:

- **Captura de Tráfico:** VPC Flow Logs captura información sobre el tráfico de red que ingresa y sale de las instancias en una VPC, así como el tráfico entre instancias dentro de la VPC.

- **Configuración a Nivel de VPC, Subnet o Interfaz de Red:** Puedes habilitar VPC Flow Logs a nivel de toda la VPC, subnets específicas o incluso a nivel de interfaz de red de una instancia.

- **Detalles de Tráfico:** Los registros incluyen detalles como direcciones IP de origen y destino, puertos, protocolos, tiempo de inicio y finalización de la conexión, y la cantidad de bytes y paquetes.

- **Monitoreo y Auditoría:** VPC Flow Logs son útiles para monitorear el tráfico de red, realizar análisis de seguridad, auditar el flujo de datos y diagnosticar problemas de conectividad.

- **Integración con Herramientas y Servicios:** Puedes enviar los registros de VPC Flow Logs a servicios como Amazon CloudWatch Logs para un análisis y monitoreo más avanzado. También puedes integrarlos con herramientas de análisis de registros de terceros.

- **Seguridad y Cumplimiento:** VPC Flow Logs son valiosos para cumplir con requisitos de seguridad y auditoría, ya que proporcionan una visibilidad detallada del tráfico en tu VPC.

- **Cobertura Global:** Puedes habilitar VPC Flow Logs en VPCs de cualquier región de AWS.

Al habilitar VPC Flow Logs, obtienes una visibilidad más profunda del tráfico de red en tu VPC, lo que es crucial para la seguridad, la solución de problemas y la optimización de recursos en la nube.
