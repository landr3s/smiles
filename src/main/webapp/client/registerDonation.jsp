<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registro de Donación</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <%@ include file="../template/headerClient.jsp" %>
    <section>
        <h2>Registro de Donación</h2>
        <% 
            String message = (String) request.getAttribute("message");
            String errorMessage = (String) request.getAttribute("error");
            if (message != null) { %>
                <p class="success" aria-live="polite"><%= message %></p>
        <% } else if (errorMessage != null) { %>
                <p class="error" aria-live="polite"><%= errorMessage %></p>
        <% } %>
        <form action="${pageContext.request.contextPath}/client/addDonation" method="post" aria-label="Formulario para registrar una nueva donación">
            <label for="name">Nombre:</label>
            <input type="text" id="name" name="name" required aria-required="true" placeholder="Ingrese el nombre de la donación"><br>

            <label for="description">Descripción:</label>
            <textarea id="description" name="description" required aria-required="true" aria-label="Descripción detallada de la donación" placeholder="Ingrese la descripción de la donación"></textarea><br>

            <input type="submit" value="Donate">
        </form>
    </section>
    <%@ include file="../template/footer.jsp" %>
</body>
</html>
