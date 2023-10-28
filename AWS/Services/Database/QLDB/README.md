# Amazon QLDB

Significa Amazon Quantum Ledger Database, es un servicio de base de datos totalmente gestionado proporcionado por Amazon Web Services (AWS). Está diseñado para ser un ledger (registro contable) transparente, inmutable y altamente escalable que utiliza la tecnología de cadena de bloques (blockchain) para proporcionar un historial completo y verificable de las transacciones.

Aquí hay algunas características clave de Amazon QLDB:

1. Registro de Transacciones Inmutable: QLDB mantiene un registro de transacciones inmutable que utiliza la tecnología de cadena de bloques. Esto significa que una vez que una transacción se ha registrado en el ledger, no se puede modificar ni eliminar.

1. Transacciones Atómicas: QLDB garantiza transacciones atómicas, consistentes, aisladas y duraderas (ACID), proporcionando una base de datos fiable y consistente.

1. Lenguaje de Consulta: Utiliza un lenguaje de consulta llamado PartiQL, que es una variante del estándar SQL. Esto facilita la integración con aplicaciones existentes y simplifica el desarrollo.

1. Escala Automática: QLDB es altamente escalable y puede adaptarse a las necesidades de rendimiento de tu aplicación sin requerir intervención manual.

1. Auditoría Transparente: Proporciona capacidades de auditoría transparentes, lo que significa que puedes rastrear y verificar fácilmente todas las transacciones almacenadas en el ledger.

1. Integración con Servicios AWS: QLDB se integra con otros servicios de AWS, lo que permite construir aplicaciones end-to-end en el ecosistema de AWS.

1. Privacidad y Seguridad: Ofrece funciones de seguridad avanzadas, incluyendo la encriptación de datos en reposo y en tránsito, y la autenticación basada en roles.

QLDB se utiliza comúnmente en casos de uso donde la integridad de los datos y la visibilidad del historial de transacciones son críticos, como en aplicaciones de registro de auditoría, sistemas de seguimiento de activos y otros escenarios que requieren un registro inmutable y verificable

## References

- [Amazon QLDB](https://aws.amazon.com/es/qldb/)
- [Amazon QLDB Documentation](https://docs.aws.amazon.com/qldb/latest/developerguide/what-is.html)
- PartiQL
  - [PartiQL](https://partiql.org/)
  - [PartiQL overview](https://partiql.org/dql/overview.html)
  - [PartiQL tutorial](https://partiql.org/tutorial.html)
  - [PartiQL in Javascript](https://abba.dev/blog/dynamodb-partiql-javascript)
  - [DynamoDB PartiQL](https://dynobase.dev/dynamodb-partiql/)
  - [PartiQL: One query language for all of your data](https://d1.awsstatic.com/events/reinvent/2019/PartiQL_One_query_language_for_all_of_your_data_OPN207.pdf)
  - [PartiQL en Amazon DynamoDB](https://docs.aws.amazon.com/es_es/amazondynamodb/latest/developerguide/ql-reference.html)
