FROM postgres:latest

# Variables
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=pswJardineria
ENV POSTGRES_DB=Jardineria

# Exponer puerto del contenedor
EXPOSE 5432