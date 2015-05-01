/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package askisi.com;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {

        String username = request.getParameter("un");
        String password = request.getParameter("pw");
        String url = "jdbc:mysql://eu-cdbr-azure-north-c.cloudapp.net:3306/askisiAD1V6Rvv8M";
        //String path = "askisi\\web\\results\\" + username;

        try {

            Class.forName("com.mysql.jdbc.Driver");

            UserBean user = new UserBean();
            user.setUserName(username);
            user.setPassword(password);

            //user = UserDAO.login(user);
            String searchQuery
                    = "select * from users where username='"
                    + username
                    + "' AND password='"
                    + password
                    + "'";

            System.out.println("Your user name is " + username);
            System.out.println("Your password is " + password);
            System.out.println("Query: " + searchQuery);

            try {
                Connection currentCon = DriverManager.getConnection(url, "bdb80e43f11e07", "48e579a7");//ConnectionManager.getConnection();
                Statement stmt = currentCon.createStatement();
                ResultSet rs = stmt.executeQuery(searchQuery);
                boolean more = rs.next();

                if (more) {
                    user.setValid(true);
                } else {
                    user.setValid(false);
                }
            } catch (Exception ex) {
                System.out.println("Log In failed: An Exception has occurred! " + ex);
            }

            if (user.isValid()) {

                HttpSession session = request.getSession(true);
                session.setAttribute("username", request.getParameter("un"));
                //File file = new File(path);
                response.sendRedirect("main/sexChoice.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (ClassNotFoundException | IOException ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        }
    }
}
