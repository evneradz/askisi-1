/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package askisi.com;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.EmptyStackException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Evaggelia
 */
public class CreateDir extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);

        response.setContentType("text/html;charset=UTF-8");

        String username = (String) session.getAttribute("username");
        String subuser = request.getParameter("subuser");
        String level = request.getParameter("level");

        String sex = request.getParameter("sex");
        System.out.println(" username " + username);
        System.out.println(" subuser " + subuser);
        System.out.println(" level " + level);
        UserBean user = new UserBean();
        user.setUserName(username);
        user.setSubuser(subuser);
        user.setLevel(level);
        user.setSex(sex);

        session.setAttribute("subuser", subuser);
        session.setAttribute("level", level);
        session.setAttribute("sex", sex);

        String res = subuser + "\n" + level + "\n" + sex;
        String path;

        path = getServletContext().getRealPath("/site/wwwroot/bin/apache-tomcat-7.0.52/webapps/askisi") + "\\web\\results\\" + username + "\\" + subuser;
        File file = new File(path);

        if (!file.exists()) {
            if (file.mkdirs()) {
                System.out.println(getServletContext().getRealPath(path));
                System.out.println("Directory username is created!");
            } else {
                System.out.println("Failed to create directory!");
                throw new EmptyStackException();
            }
        }
        try {
            File filedet = new File(getServletContext().getRealPath("/site/wwwroot/bin/apache-tomcat-7.0.52/webapps/askisi/web/results/" + username + "/" + subuser) + "\\details.txt");
            if (filedet.createNewFile()) {
                System.out.println("File is created!");
            } else {
                System.out.println("File already exists.");
            }
            try (PrintWriter writer = new PrintWriter(filedet, "UTF-8")) {
                writer.println(res);
                System.out.println(res);
            }
        } catch (IOException e) {
        }
        response.sendRedirect("main/questionOne.jsp");
    }
}
