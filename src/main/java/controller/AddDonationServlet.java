package controller;

import dao.DonationDAO;
import model.Donation;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/client/addDonation")
public class AddDonationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");

        Donation donation = new Donation();
        donation.setName(name);
        donation.setDescription(description);

        DonationDAO donationDAO = new DonationDAO();
        try {
            donationDAO.addDonation(donation);
            // Añadir el mensaje de éxito a la solicitud
            request.setAttribute("message", "Donation added successfully!");
        } catch (SQLException e) {
            // Añadir el mensaje de error a la solicitud
            request.setAttribute("error", "Error adding donation: " + e.getMessage());
        }
        
        // Redirigir a la misma página para mostrar el mensaje
        request.getRequestDispatcher("/client/registerDonation.jsp").forward(request, response);
    }
}
