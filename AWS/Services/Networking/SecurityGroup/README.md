# Security Group

Un Security Group (Grupo de Seguridad) es un mecanismo fundamental para controlar el tráfico de red hacia y desde instancias (máquinas virtuales) en una Virtual Private Cloud (VPC).

Aquí hay algunos aspectos clave sobre los Security Groups:

- **Firewall Virtual:** Funciona como un firewall virtual que controla el tráfico de red a nivel de instancia. Puedes pensar en un Security Group como una capa de seguridad que rodea tus instancias.

- **Reglas de Entrada y Salida:** Los Security Groups tienen reglas de entrada y salida que especifican qué tipo de tráfico está permitido o denegado. Cada regla está asociada con un tipo de tráfico, un rango de direcciones IP de origen o destino y un puerto.

- **Configuración Basada en Permisos:** Las reglas de un Security Group son permisivas por defecto, lo que significa que si no hay una regla específica que lo prohíba, el tráfico está permitido. Esto sigue el principio de "menos privilegios": solo permitir lo que es necesario.

- **Asociación con Instancias:** Los Security Groups se asocian con instancias individuales en lugar de subnets. Puedes asignar múltiples Security Groups a una instancia, y las reglas se acumulan.

- **Estado de Conexión:** Los Security Groups rastrean el estado de las conexiones, lo que significa que si permites el tráfico de salida para una solicitud específica, las respuestas relacionadas se permitirán automáticamente.

- **Aplicación a Nivel de Instancia:** A diferencia de las Network ACLs que son a nivel de subnet, los Security Groups son aplicados a nivel de instancia.

En resumen, un Security Group en AWS es una herramienta esencial para controlar el tráfico de red a nivel de instancia, permitiendo que las instancias se comuniquen entre sí y con recursos externos de manera segura y controlada.
