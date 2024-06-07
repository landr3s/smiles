package controller;

import dao.DonationDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/addComment")
public class AddCommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int donationId = Integer.parseInt(request.getParameter("id"));
        String comment = request.getParameter("comment");

        DonationDAO donationDAO = new DonationDAO();
        try {
            donationDAO.addComment(donationId, comment);
            request.setAttribute("message", "Comment added successfully");
        } catch (SQLException e) {
            request.setAttribute("message", "Error adding comment: " + e.getMessage());
        }
        request.getRequestDispatcher("/admin/homeAdmin.jsp").forward(request, response);
    }
}
