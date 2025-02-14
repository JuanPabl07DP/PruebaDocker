# Usa una imagen más ligera con solo el JRE
FROM openjdk:17-jdk-slim

# Directorio de trabajo en el contenedor
WORKDIR /usrapp/bin

# Exponer el puerto que usa Spring Boot
ENV PORT 6000
EXPOSE 6000

# Copiar el JAR generado por Maven
COPY target/Contenedor-1.0-SNAPSHOT.jar app.jar

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "/usrapp/bin/app.jar"]
