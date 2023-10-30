# Route Table

Una Route Table (Tabla de Ruteo) es un componente clave de una Virtual Private Cloud (VPC). Una Route Table contiene un conjunto de reglas, conocidas como rutas, que determinan cómo se dirige el tráfico de red dentro de la VPC.

Cada VPC tiene asociada al menos una Route Table por defecto, pero puedes crear tus propias tablas de ruteo personalizadas según tus necesidades. Cada subnet en una VPC debe estar asociada con una tabla de ruteo, y las reglas en esa tabla determinan el destino del tráfico desde las instancias dentro de esa subnet.

Algunos puntos importantes sobre las Route Tables:

- **Enrutamiento:** Las reglas en una Route Table especifican cómo se dirige el tráfico. Por ejemplo, puedes tener reglas que envíen tráfico destinado a Internet a través de un Internet Gateway, o que enruten el tráfico hacia otra VPC a través de una VPC Peering Connection.

- **Asociación de Subnets:** Cada subnet en una VPC debe estar asociada con una tabla de ruteo. Esto define cómo se enruta el tráfico desde las instancias en esa subnet.

- **Prioridad de Evaluación:** Las reglas en una tabla de ruteo se evalúan en orden, de arriba a abajo. La primera regla que coincida con la dirección de destino determina cómo se enruta el tráfico.

- **Múltiples Tablas de Ruteo:** Puedes tener múltiples tablas de ruteo en una VPC y asociar diferentes subnets con diferentes tablas, permitiéndote segmentar y controlar el tráfico de manera más específica.

En resumen, una Route Table en AWS es un componente fundamental para controlar y dirigir el tráfico dentro de una Virtual Private Cloud, proporcionando la capacidad de definir rutas personalizadas para las subnets y los recursos en la nube.
