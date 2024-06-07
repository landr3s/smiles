<%@page import="model.Donation"%>
<%@page import="java.util.List"%>
<%@page import="dao.DonationDAO"%>
<%@ include file="../template/headerClient.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
    <div class="container">
        <h2>Mis Donaciones</h2>
        <table class="donation-table" aria-label="Lista de donaciones del cliente">
            <thead>
                <tr>
                    <th scope="col" aria-label="Identificador de la donación">ID</th>
                    <th scope="col" aria-label="Nombre de la donación">Nombre</th>
                    <th scope="col" aria-label="Descripción de la donación">Descripcion</th>
                    <th scope="col" aria-label="Fecha de la donación">Fecha</th>
                    <th scope="col" aria-label="Comentario de la donación">Comentario</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    DonationDAO donationDAO = new DonationDAO();
                    List<Donation> donations = donationDAO.getAllDonations();
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
    <%@ include file="../template/footer.jsp" %>
</body>
</html>
