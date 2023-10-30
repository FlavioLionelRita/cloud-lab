# NAT Gateway

Un NAT Gateway (Network Address Translation Gateway) en Amazon Web Services (AWS) es un servicio que permite que instancias en una red privada dentro de una Virtual Private Cloud (VPC) se comuniquen con Internet o con otros servicios en la nube, sin exponer directamente sus direcciones IP privadas.

Cuando tienes instancias en una red privada que necesitan acceder a Internet para actualizaciones, descargas u otras operaciones, pero deseas mantener la seguridad al no exponer sus direcciones IP privadas, puedes utilizar un NAT Gateway. Este actúa como intermediario entre las instancias en la red privada y el Internet, traduciendo las direcciones IP privadas de las instancias en direcciones IP públicas.

Al usar un NAT Gateway, las instancias en la red privada pueden enviar solicitudes al Internet, pero las respuestas se dirigen al NAT Gateway, que luego las envía de vuelta a las instancias en la red privada. Esto ayuda a proteger las direcciones IP privadas y proporciona un nivel adicional de seguridad.

Es importante mencionar que el NAT Gateway está asociado con una sola VPC y se coloca en una subnet pública. Además, incurre en costos, ya que se factura por el tráfico de salida hacia Internet.

En resumen, un NAT Gateway en AWS es un servicio que facilita la conectividad de instancias en una red privada a Internet de manera segura, al proporcionar una traducción de direcciones IP para mantener la privacidad de las direcciones internas.
