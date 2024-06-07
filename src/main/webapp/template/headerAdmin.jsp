<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <!-- Asegúrate de que la ruta apunte a la URL correcta del servlet -->
                <li><a href="${pageContext.request.contextPath}/admin/homeAdmin.jsp">Inicio</a></li>
                <!-- El enlace de cierre de sesión debería redirigir al servlet de cierre de sesión -->
                <li style="float:right"><a href="${pageContext.request.contextPath}/index.jsp">Sign Out</a></li>
            </ul>
        </nav>
    </header>
</body>
</html>
