<%@page import="model.Donation"%>
<%@page import="java.util.List"%>
<%@page import="dao.DonationDAO"%>
<%@ include file="template/headerMain.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <div class="container">
        <div class="content">
            <h1 class="main-title">Smiles Fundacion Sin Fines de Lucro</h1>
            <p class="subtitle">Donar una sonrisa es regalar felicidad a un niño</p>
            <img src="images/smiles.jpeg" alt="Imagen de una sonrisa infantil, símbolo de la misión de la fundación" class="main-image">
        </div>
        <div class="donations">
            <h2>Donaciones</h2>
            <form method="get" action="index.jsp" aria-label="Formulario para ordenar las donaciones">
                <button type="submit" name="sort" value="name" aria-label="Ordenar donaciones por nombre">Ordenar por Nombre</button>
                <button type="submit" name="sort" value="id" aria-label="Ordenar donaciones por ID">Ordenar por ID</button>
            </form>
            <table class="donation-table" aria-label="Tabla de donaciones">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Fecha</th>
                        <th>Comentario</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        String sortOrder = request.getParameter("sort");
                        DonationDAO donationDAO = new DonationDAO();
                        List<Donation> donations;
                        
                        if ("name".equals(sortOrder)) {
                            donations = donationDAO.getAllDonationsSortedByName();
                        } else if ("id".equals(sortOrder)) {
                            donations = donationDAO.getAllDonationsSortedById();
                        } else {
                            donations = donationDAO.getAllDonations();
                        }
                        
                        for (Donation donation : donations) {
                    %>
                    <tr>
                        <td><%= donation.getId() %></td>
                        <td><%= donation.getName() %></td>
                        <td><%= donation.getDescription() %></td>
                        <td><%= donation.getDate() %></td>
                        <td><%= donation.getComment() %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
    <%@ include file="template/footer.jsp" %>
</body>
</html>
