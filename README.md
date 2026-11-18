# data-analytics-practicas
# Modelo de Datos - RetailPro (o Videoclub)

## Descripción
Este repositorio contiene el diseño del esquema relacional y el script DDL/DML para la base de datos del negocio. El modelo se encuentra normalizado hasta 3FN, asegurando integridad referencial y evitando redundancias en entidades de clientes, películas/productos, alquileres y detalle de transacciones.

## Requisitos
- PostgreSQL 14 o superior
- pgAdmin 4 / DBeaver o cliente de terminal `psql`

## Cómo ejecutar el script

### Opción 1: Desde la terminal (psql)
Para crear la base de datos y ejecutar el script completo:

```bash
# Crear base de datos (opcional si ya existe)
createdb -U postgres mi_base_datos

# Ejecutar el script SQL
psql -U postgres -d mi_base_datos -f script_esquema.sql
