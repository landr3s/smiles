<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <!-- Aseg�rate de que la ruta apunte a la URL correcta del servlet -->
                <li><a href="${pageContext.request.contextPath}/client/homeClient.jsp">Mis Donaciones</a></li>
                <li><a href="${pageContext.request.contextPath}/client/registerDonation.jsp">Registro</a></li>
                <!-- El enlace de cierre de sesi�n deber�a redirigir a la p�gina principal o al servlet adecuado -->
                <li style="float:right"><a href="${pageContext.request.contextPath}/index.jsp">Sign Out</a></li>
            </ul>
        </nav>
    </header>
</body>
</html>
