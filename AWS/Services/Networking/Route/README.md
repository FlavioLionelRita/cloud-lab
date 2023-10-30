# Route

Una Route (ruta) se refiere a la configuración de enrutamiento que se establece para determinar cómo se dirige el tráfico entre diferentes destinos dentro de una red, especialmente en el marco de una Virtual Private Cloud (VPC).

En una VPC de AWS, las Routes especifican hacia dónde debe dirigirse el tráfico para llegar a su destino. Puedes configurar rutas en una tabla de ruteo, que es una colección de reglas de enrutamiento que se aplican a una subnet en particular. La tabla de ruteo determina cómo se encaminan los paquetes desde las instancias dentro de la subnet.

Por ejemplo, puedes tener una ruta que envíe todo el tráfico destinado a una dirección IP específica o a un rango de direcciones IP a través de un Internet Gateway (Puerta de Enlace a Internet) para acceder a Internet. Otra ruta podría enviar tráfico destinado a otra VPC a través de un VPC Peering Connection.

En resumen, en AWS, una Route se refiere a la configuración de enrutamiento que especifica cómo se dirige el tráfico dentro de una VPC, determinando los destinos y las rutas que los paquetes deben seguir para llegar a su destino.
