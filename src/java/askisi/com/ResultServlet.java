/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package askisi.com;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Evaggelia
 */
public class ResultServlet extends HttpServlet {

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
    @SuppressWarnings("empty-statement")
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);

        response.setContentType("text/html;charset=UTF-8");
        String res = request.getParameter("hiddenValue");

        String path;
        String firstline;
        String[] next = new String[]{"userLogged", "questionTwo", "questionThree", "questionFour", "questionFive", "questionSix", "questionSeven", "questionEight", "questionNine", "questionTen", "questionEleven", "questionTwelve", "end"};
        int i = 0;
        String username = (String) session.getAttribute("username");
        String subname = (String) session.getAttribute("subuser");
        String level = (String) session.getAttribute("level");
        System.out.println(" username " + username);
        System.out.println(" subname " + subname);
        System.out.println(" level " + level);
        try {
            firstline = res.substring(0, 1);
            if ("a".equals(firstline)) {
                i = 10;
            } else if ("b".equals(firstline)) //if (firstline.equals(" ")) {
            {
                i = 11;

            } else if ("c".equals(firstline)) //if (firstline.equals(" ")) {
            {
                i = 12;
            } else {
                i = Integer.parseInt(res.substring(0, 1));
            }
        } catch (NumberFormatException e) {
        }
        path = "web\\results\\" + username + "\\" + subname + "\\question" + i + ".txt";
        String subpath = "web\\results\\" + username + "\\" + subname;
        File file = new File(path);
        System.out.println(" path " + path);

        try {
            if (file.createNewFile()) {
                System.out.println("File is created!");
            } else {
                System.out.println("File already exists.");
            }

        } catch (IOException e) {
        }

        try (PrintWriter writer = new PrintWriter(path, "UTF-8")) {
            writer.println(res);
            System.out.println(res);
            System.out.println(i);
        }
        if (("5".equals(level) || "6".equals(level)) && (i == 6 || i == 3 || i == 5)) {
            response.sendRedirect(response.encodeRedirectURL("main/" + next[i] + "_1.jsp"));
        } else {
            response.sendRedirect(response.encodeRedirectURL("main/" + next[i] + ".jsp"));
        }
    }
}
