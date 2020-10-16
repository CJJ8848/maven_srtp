package service;

import org.apache.wicket.IResourceListener;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class getsh {
    public static String getsh_demo(String SHELL_FILE, String genome, String cellline,String chrom,String start,String end,String strand) throws IOException, InterruptedException {
        String strsh = genome+" "+cellline+" "+chrom+" "+start+" "+end+" "+strand;
        String bashCommand = "sshpass -p 1433997922Bb ssh jiahui@10.109.92.2"+" bash " + SHELL_FILE +" "+strsh;
//            String bashCommand = "chmod 777 " + "/usr/local/java/jdk1.8.0_121/lib/stopffmpeg.sh" ;
//            String bashCommand = "kill -9" + ip;
        System.out.println(bashCommand);
        Runtime runtime = Runtime.getRuntime();
        Process pro = runtime.exec(bashCommand);
        int status = pro.waitFor();
        if (status != 0) {
            System.out.println("Failed to call shell's command ");
        }

        BufferedReader br = new BufferedReader(new InputStreamReader(pro.getInputStream()));
        StringBuffer strbr = new StringBuffer();
        String line;
        while ((line = br.readLine()) != null) {
            strbr.append(line).append("\n");
        }
        String result = strbr.toString();
        return result;
    }
    }
