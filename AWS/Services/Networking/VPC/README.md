# VPC

Una VPC (Virtual Private Cloud) en Amazon Web Services (AWS) es un servicio que te permite crear tu propia red virtual en la nube. Es un espacio aislado y personalizable donde puedes lanzar recursos de AWS, como instancias de EC2 (Amazon Elastic Compute Cloud), bases de datos RDS (Amazon Relational Database Service) y más.

Algunos conceptos clave sobre las VPC en AWS:

- **Red Privada Virtual:** Una VPC te proporciona una red privada virtual en la nube. Puedes definir tu propia gama de direcciones IP, crear subnets, configurar tablas de ruteo y controlar la configuración de seguridad.

- **Segmentación:** Puedes dividir tu VPC en subnets, que son segmentos lógicos de direcciones IP. Esto te permite organizar y segmentar tus recursos de manera eficiente.

- **Acceso Controlado:** Puedes definir Security Groups y Network ACLs para controlar el tráfico de red y la seguridad a nivel de instancia y subnet.

- **Conectividad:** Puedes conectar tu VPC a Internet a través de un Internet Gateway para permitir que las instancias tengan acceso a recursos en Internet. También puedes establecer conexiones VPN (Virtual Private Network) para conectar tu VPC a tu red local.

- **Zonas de Disponibilidad:** Puedes distribuir tus subnets en múltiples Zonas de Disponibilidad para mejorar la disponibilidad y la resistencia ante fallas.

- **Escalabilidad:** Puedes escalar tu VPC según sea necesario para adaptarse a los requisitos de tu aplicación.

- **Aislamiento:** Cada VPC es completamente aislada de las demás, lo que proporciona un alto grado de aislamiento y seguridad para tus recursos en la nube.

- **Asignación de Direcciones IP:** Puedes asignar direcciones IP públicas y privadas a tus instancias, permitiendo la comunicación interna y externa según tus necesidades.

En resumen, una VPC en AWS es una red virtual personalizable y aislada que te permite lanzar recursos en la nube de AWS en un entorno controlado y configurado según tus necesidades específicas. Es fundamental para la construcción y administración de infraestructuras en la nube de manera segura y eficiente.
