# UNIVERSIDAD POLITECNICA SALESIANA

**NOMBRE:** ANDRÉS GUAMÁN

**MATERIA:** PLATAFORMAS WEB

**TEMA:** EXAMEN PRIMER PARCIAL

---

## Descripción del Proyecto

Este proyecto es un sistema de gestión de donaciones, desarrollado como parte del examen del primer parcial en la materia de Plataformas Web. El sistema permite a los usuarios registrar donaciones, ver una lista de sus donaciones y administrar comentarios en las donaciones.

## Requisitos

- **Java 8 o superior**
- **Apache Tomcat**
- **JDBC Driver para PostgreSQL**
- **Base de datos PostgreSQL**

## Estructura del Proyecto

- **/src**: Contiene los archivos fuente del proyecto.
- **/webapp**: Contiene los archivos JSP y las configuraciones de la aplicación web.
- **/css**: Contiene los estilos CSS utilizados en la aplicación.

## Configuración de la Base de Datos

Para configurar la base de datos, sigue estos pasos:

1. **Crear la base de datos**:
   - Abre tu cliente de base de datos PostgreSQL y crea una nueva base de datos.

2. **Ejecutar los scripts SQL**:
   - Ejecuta los siguientes scripts SQL para crear las tablas y añadir datos de prueba:

```sql
-- Script para crear la tabla users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL
);

-- Insertar datos de prueba en la tabla users
INSERT INTO users (username, password, role) VALUES
('admin', 'admin', 'admin'),
('client', 'client', 'client');

-- Script para crear la tabla donations
CREATE TABLE donations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    comment TEXT
);

-- Insertar datos de prueba en la tabla donations
INSERT INTO donations (name, description) VALUES
('Bear', 'Teddy bear');
```

# Iniciar el Proyecto

## Clonar el repositorio

```bash
git clone https://github.com/tu_usuario/tu_repositorio.git
cd tu_repositorio
```
# Configurar el servidor Tomcat

Coloca la aplicación web en el directorio `webapps` de tu instalación de Tomcat.

# Construir y desplegar

Asegúrate de que todas las dependencias estén configuradas correctamente en tu `web.xml` y `context.xml`.

# Acceder a la aplicación

Abre tu navegador y navega a `http://localhost:8080/tu_aplicacion`.

# Contribuir

Las contribuciones son bienvenidas. Si deseas contribuir al proyecto, por favor sigue estos pasos:

1. **Haz un fork del repositorio.**

2. **Crea una nueva rama:**

    ```bash
    git checkout -b feature/nueva-funcionalidad
    ```

3. **Realiza tus cambios y confirma:**

    ```bash
    git commit -m 'Agrega nueva funcionalidad'
    ```

4. **Envía tus cambios a la rama remota:**

    ```bash
    git push origin feature/nueva-funcionalidad
    ```

5. **Abre un Pull Request.**
