package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/ah_info")
public class crispra_h_info_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String genome = request.getParameter("genome");
        String cellline = request.getParameter("cellline");
        request.setAttribute("genome",genome);
        request.setAttribute("cellline",cellline);
        request.setAttribute("crispra","CRISPRa");
        request.getRequestDispatcher("/ah_score_result").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
