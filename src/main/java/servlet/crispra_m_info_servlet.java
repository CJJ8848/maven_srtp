package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/am_info")
public class crispra_m_info_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String genome = request.getParameter("genome");
        String cellline = request.getParameter("cellline");
        String site = request.getParameter("site");
        request.setAttribute("genome",genome);
        request.setAttribute("cellline",cellline);
        request.setAttribute("site",site);
        request.setAttribute("crispra","CRISPRa");
        request.getRequestDispatcher("/am_score_result").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
