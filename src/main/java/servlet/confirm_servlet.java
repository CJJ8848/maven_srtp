package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Pattern;

@WebServlet("/confirm")
public class confirm_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //response.sendRedirect("jsp/loading.jsp");
        HttpSession session = request.getSession();
        String text = (String) session.getAttribute("site");
        String filter = null;
        if (Pattern.matches("chr\\d{1,},\\d{1,},\\d{1,},\\+",text) | Pattern.matches("chr\\d{1,},\\d{1,},\\d{1,},-",text)) {
            filter = "success";
            session.setAttribute("filter", filter);
        } else {
            filter = null;
            session.setAttribute("filter", null);
        }
        request.getRequestDispatcher("jsp/confirm.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
