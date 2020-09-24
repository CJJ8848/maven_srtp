package servlet;

import service.getpy;
import service.getsh;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/am_score_result")
public class crispra_m_score_result_py_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getpy getpy = new getpy();
        getsh getsh = new getsh();
        String strinput = null;
        String genome = request.getParameter("genome");
        String cellline = request.getParameter("cellline");
        String site = request.getParameter("site");
        List<String> sitelist = Arrays.asList(site.split(","));
        String chrom = sitelist.get(0);
        String start = sitelist.get(1);
        String end = sitelist.get(2);
        String strand = sitelist.get(3);
        System.out.println(strand);

        try {
            strinput = getsh.getsh_demo("/Users/cuijiajun/Desktop/test.sh",genome,cellline,chrom,start,end,strand);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        //String str = getpy.getPythonDemo("/Users/cuijiajun/Desktop/BMI3/python_scripts/test.py","-0.18708664, 1.73239376, 1.54802069,  0.7466342,   1.37401474,  0.33645973, 2.11035398,  1.8803562,   0.72672721 , 2.28216878 , 0.56584782,  1.82112032  ,0.88874096 , 0.72263392");
        String str = getpy.getPythonDemo("/Users/cuijiajun/Desktop/SRTP/python/ml_crispra_v6/ml_crispra_10features_model.py",strinput);
        //String str1 = getpy.getPythonDemo("/Users/cuijiajun/Desktop/SRTP/python/ml_crispra_v4/ml_crispra_14features_model_1.py","-0.18708664, 1.73239376, 1.54802069,  0.7466342,   1.37401474,  0.33645973, 2.11035398,  1.8803562,   0.72672721 , 2.28216878 , 0.56584782,  1.82112032  ,0.88874096 , 0.72263392");
        //String str1ne = getpy.getPythonDemo("/Users/cuijiajun/Desktop/SRTP/python/ml_crispra_v4/ml_crispra_14features_model_1_ne.py","-0.18708664, 1.73239376, 1.54802069,  0.7466342,   1.37401474,  0.33645973, 2.11035398,  1.8803562,   0.72672721 , 2.28216878 , 0.56584782,  1.82112032  ,0.88874096 , 0.72263392");
        //String str2 = getpy.getPythonDemo("/Users/cuijiajun/Desktop/SRTP/python/ml_crispra_v4/ml_crispra_14features_model_2.py","-0.18708664, 1.73239376, 1.54802069,  0.7466342,   1.37401474,  0.33645973, 2.11035398,  1.8803562,   0.72672721 , 2.28216878 , 0.56584782,  1.82112032  ,0.88874096 , 0.72263392");

        System.out.println(str);
        List<String> list = Arrays.asList(str.replaceAll("\\[|\\]", "").split(","));
        //List<String> list1 = Arrays.asList(str1.replaceAll("\\[|\\]", "").split(","));
        //List<String> list1ne = Arrays.asList(str1ne.replaceAll("\\[|\\]", "").split(","));

        //List<String> list2 = Arrays.asList(str2.replaceAll("\\[|\\]", "").split(","));
        request.setAttribute("list", list);

        //request.setAttribute("list1", list1);
        //request.setAttribute("list1ne", list1ne);
        //request.setAttribute("list2", list2);
//        replaceAll("\\[|\\]", "")
        request.setAttribute("species", "Mouse");
        request.getRequestDispatcher("/jsp/score_result.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
