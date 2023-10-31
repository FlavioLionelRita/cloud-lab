# Load Balancer

Un Load Balancer (equilibrador de carga) es un servicio que distribuye automáticamente el tráfico entrante entre varias instancias o recursos, garantizando así que ningún recurso se vea sobrecargado, optimizando el rendimiento y mejorando la disponibilidad y la tolerancia a fallos. AWS proporciona diferentes tipos de Load Balancers para adaptarse a diversos casos de uso.

## Tipos de Load Balancers

**Application Load Balancer (ALB):**

Este tipo de Load Balancer opera a nivel de la capa 7 (la capa de aplicación) del modelo OSI. Es ideal para distribuir el tráfico a instancias basadas en contenido, como aplicaciones web. Puede enrutar el tráfico basándose en la URL de destino y el contenido de la solicitud.

**Network Load Balancer (NLB):**

Funciona a nivel de la capa 4 (la capa de transporte) y es capaz de manejar un alto volumen de tráfico con latencia ultrabaja. Es adecuado para aplicaciones que requieren rendimiento y capacidad de procesamiento intensivos.

**Classic Load Balancer:**

Este es el antiguo Load Balancer de AWS y soporta tanto la capa 4 como la capa 7. Aunque AWS recomienda el uso de los tipos de Load Balancers mencionados anteriormente para nuevas implementaciones, Classic Load Balancer sigue siendo compatible con las aplicaciones existentes.

## Características clave de los Load Balancers

- **Alta Disponibilidad:** Los Load Balancers ayudan a garantizar que las aplicaciones sean accesibles y estén disponibles incluso si una o varias instancias subyacentes fallan.

- **Escalabilidad:** Permiten escalar horizontalmente al agregar o quitar instancias, adaptándose automáticamente a cambios en la demanda del tráfico.

- **Monitoreo y Registro:** Proporcionan métricas y registros detallados que ayudan a analizar el rendimiento y la salud de las instancias y aplicaciones.

- **Seguridad:** Los Load Balancers pueden ayudar a mejorar la seguridad al proporcionar funciones como el cifrado SSL/TLS y filtrado de tráfico.

- **Flexibilidad de Configuración:** Permiten configurar reglas de enrutamiento y políticas de sesiones para adaptarse a los requisitos específicos de la aplicación.

Al utilizar un Load Balancer en AWS, se mejora la capacidad de una aplicación para manejar cargas de trabajo variables y se optimiza la utilización de recursos, contribuyendo así a una arquitectura más robusta y eficiente.
