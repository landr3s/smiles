<%@page import="model.Donation"%>
<%@page import="java.util.List"%>
<%@page import="dao.DonationDAO"%>
<%@ include file="../template/headerAdmin.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
    <div class="container">
        <h2>Donaciones</h2>
        <table class="donation-table" aria-label="Lista de donaciones">
            <thead>
                <tr>
                    <th scope="col" aria-label="Identificador de la donación">ID</th>
                    <th scope="col" aria-label="Nombre de la donación">Nombre</th>
                    <th scope="col" aria-label="Descripción de la donación">Descripcion</th>
                    <th scope="col" aria-label="Fecha de la donación">Fecha</th>
                    <th scope="col" aria-label="Comentario de la donación">Comentario</th>
                    <th scope="col" aria-label="Acciones disponibles para la donación">Acciones</th>
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
                    <td>
                        <form action="<%= request.getContextPath() %>/admin/addComment" method="post" aria-label="Agregar comentario a la donación con ID <%= donation.getId() %>">
                            <input type="hidden" name="id" value="<%= donation.getId() %>">
                            <textarea name="comment" placeholder="Agregar comentario" aria-label="Escribe tu comentario aquí"></textarea>
                            <button type="submit" aria-label="Enviar comentario">Post</button>
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <%@ include file="../template/footer.jsp" %>
</body>
</html>
