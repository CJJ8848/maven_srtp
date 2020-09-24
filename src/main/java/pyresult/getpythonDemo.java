package pyresult;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

public class getpythonDemo {
    public static void main(String[] args) {
        getpythonDemo.getPythonDemo("/Users/cuijiajun/Desktop/BMI3/python_scripts/test.py","first","second");
    }

    public static String getPythonDemo(String pyPath, String args1, String args2){
        Process proc;
        String line = null;
        List<String> lines = new ArrayList<String>();
        try {
            String[] args1new = new String[] { "python"
                    ,pyPath
                    ,String.valueOf(args1)
                    ,String.valueOf(args2)
            };
            proc = Runtime.getRuntime().exec(args1new);  //该方法参数必须是String类型的

            //用输入输出流来截取结果
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(), "gbk"));   //gbk 避免汉字乱码

            while ((line = in.readLine()) != null) {
                System.out.println(line);
                lines.add(line);   //把Python的print值保存了下来
            }

            in.close();
            int exitVal = proc.waitFor();
            System.out.println("Process exitValue: " + exitVal);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("Java调Python脚本结束");
        String lineData = lines.toString();
        return lineData;
    }
}
