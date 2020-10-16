package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.beans.beancontext.BeanContextChild;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

import service.getR;
import service.getpy;
import service.getsh;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import javax.swing.*;

@WebServlet("/ah_score_result")
public class crispra_h_score_result_py_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        getpy getpy = new getpy();
        getsh getsh = new getsh();
        getR getR = new getR();
        String strinput = null;
        String genome = (String) session.getAttribute("genome");
        String cellline = (String) session.getAttribute("cellline");
        String site = (String) session.getAttribute("site");
        System.out.println(site);
        if (site != ""){
            List<String> sitelist = Arrays.asList(site.split("\n"));
            List<List> nextlinelist = new ArrayList<>();


            for(int i =0; i < sitelist.size();i++){
                String siteitem = sitelist.get(i);
                List<String> sitesingle = Arrays.asList(siteitem.split(","));
                String chrom = sitesingle.get(0);
                String start = sitesingle.get(1);
                String end = sitesingle.get(2);
                String strand = sitesingle.get(3);

                try {
                    strinput = getsh.getsh_demo("/media/jiahui/hdd2/srtp2018/pipeline_final.sh",genome,cellline,chrom,start,end,strand);
                    request.setAttribute("start",start);
                    String str = getpy.getPythonDemo("/Users/cuijiajun/Desktop/SRTP/python/ml_crispra_v6/ml_crispra_14features_model.py",strinput);
                    str = str+","+siteitem+","+strinput;
                    str = str.replaceAll(" ", "");
                    List<String> lt = Arrays.asList(str.replaceAll("\\[|\\]", "").split(","));
//                    List<String> featurevalues = Arrays.asList(strinput.replaceAll("\\[|\\]", "").split(","));

                    try {
                        getR.getR_demo("/Users/cuijiajun/Desktop/plot3.R", lt.get(0),lt.get(1),lt.get(2),lt.get(3),lt.get(4),start);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }

                    nextlinelist.add(lt);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }


            }
            String feature = "gccount\tDistance.to.TSS\tK562_dnase\tK562_H2AFZ_broad\tK562_H3K4me3_merge\tK562_H3K4me1_usc\tK562_H3K4me2_broad\tK562_H3K9ac_merge\tK562_H4K20me1_broad\tK562_H3K27ac_broad\tK562_H3K36me3_merge\tK562_H3K79me2_broad\tK562_H3K9me3_broad\tK562_H3K27me3_usc";
            List<String> features = Arrays.asList(feature.replaceAll("\\[|\\]", "").split("\t"));
            request.setAttribute("features", features);
            request.setAttribute("nextlinelist", nextlinelist);
            request.setAttribute("species", "Human");
//            request.setAttribute("featurevalues",featurevalues);
            String plotpath = this.getServletContext().getRealPath("/plots");
            System.out.println(plotpath);
            request.setAttribute("path", plotpath);
            request.getRequestDispatcher("/jsp/score_result.jsp").forward(request, response);

        }else{
            request.getRequestDispatcher("/jsp/homepage.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
