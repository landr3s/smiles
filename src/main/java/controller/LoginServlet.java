package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();
        try {
            User user = userDAO.getUser(username, password);
            if (user != null) {
                request.getSession().setAttribute("user", user);
                if ("admin".equals(user.getRole())) {
                    response.sendRedirect("admin/homeAdmin.jsp");
                } else if ("client".equals(user.getRole())) {
                    response.sendRedirect("client/homeClient.jsp");
                }
            } else {
                response.sendRedirect("login.jsp?error=Invalid%20credentials");
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
}
