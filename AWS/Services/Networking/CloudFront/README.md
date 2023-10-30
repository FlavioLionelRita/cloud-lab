# Cloud Front

CloudFront es el servicio de CDN (Red de Distribución de Contenidos) de Amazon Web Services (AWS). Su función principal es acelerar la entrega de contenido web estático y dinámico, como imágenes, videos, archivos CSS y HTML, a usuarios finales alrededor del mundo. La idea es reducir la latencia y mejorar la velocidad de carga de páginas web al ubicar el contenido más cerca de los usuarios.

Cuando un usuario solicita contenido, CloudFront redirige la solicitud al servidor más cercano en su red global de ubicaciones de borde (edge locations). Estos puntos de presencia están distribuidos estratégicamente en todo el mundo. Si el contenido solicitado ya se encuentra en una edge location (porque alguien más lo solicitó recientemente), CloudFront lo entrega directamente desde allí. Si no, CloudFront obtiene el contenido del servidor de origen que puede ser un bucket de Amazon S3, una instancia de Amazon EC2, o cualquier otro origen de origen personalizado.

Además de la distribución de contenido, CloudFront también proporciona funciones de seguridad, como la capacidad de integrarse con certificados SSL/TLS para cifrar la comunicación y proteger contra ataques DDoS (Distributed Denial of Service).

En resumen, CloudFront es un servicio que mejora la velocidad y seguridad de la entrega de contenido web al utilizar una red global de edge locations para distribuir contenido de manera eficiente a usuarios finales.
