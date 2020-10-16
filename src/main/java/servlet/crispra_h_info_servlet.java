package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

@WebServlet("/ah_info")
public class crispra_h_info_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String genome = request.getParameter("genome");
        String cellline = request.getParameter("cellline");
        String site = request.getParameter("site");
        HttpSession session = request.getSession();
        session.setAttribute("genome",genome);
        session.setAttribute("cellline",cellline);
        session.setAttribute("site",site);
        session.setAttribute("crispra","CRISPRa");
//        PrintWriter out=response.getWriter();
//        out.println("<html>");
//        out.println("<body>");
//        out.println("faerffwefq <div><img src=\"name.gif\" alt=\"\" /></div>");
//        out.println("</body>");
//        out.println("</html>");
        request.getRequestDispatcher("/confirm").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
