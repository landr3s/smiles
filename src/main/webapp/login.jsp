<%@ include file="template/headerMain.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="login" method="post">
            <div class="form-group">
                <label for="username" aria-label="Nombre de usuario">Usuario</label>
                <input type="text" id="username" name="username" required aria-required="true">
            </div>
            <div class="form-group">
                <label for="password" aria-label="Contraseña">Contraseña</label>
                <input type="password" id="password" name="password" required aria-required="true">
            </div>
            <button type="submit" aria-label="Iniciar sesión">Sign In</button>
        </form>
        <% if (request.getParameter("error") != null) { %>
        <p class="error-message" aria-live="polite"><%= request.getParameter("error") %></p>
        <% } %>
    </div>
    <%@ include file="template/footer.jsp" %>
</body>
</html>
