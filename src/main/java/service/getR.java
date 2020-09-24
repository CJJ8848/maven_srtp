package service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class getR {
    public static String getR_demo(String R_FILE, String args1) throws IOException, InterruptedException {
        String bashCommand = "Rscript " + R_FILE + " "+args1;
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
