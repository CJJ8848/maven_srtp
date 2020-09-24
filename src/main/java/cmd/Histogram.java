package cmd;
import java.awt.BorderLayout;
        import java.io.FileInputStream;
        import java.io.FileNotFoundException;
        import java.io.IOException;
        import java.util.Scanner;

        import javax.swing.JFrame;
        import javax.swing.JPanel;

        import org.jfree.chart.ChartFactory;
        import org.jfree.chart.ChartPanel;
        import org.jfree.chart.JFreeChart;
        import org.jfree.chart.plot.PlotOrientation;
        import org.jfree.data.category.DefaultCategoryDataset;

public class Histogram extends JFrame {

    private int countUnder100 = 0;//The count of the number whose value is under 100;
    private int countOver100 = 0;// The count of the number whose value is over  100;
    FileInputStream fis;
    Scanner sc;
    int[] a = new int[10];
    String filePath = "C:\\Temp\\integers.dat";

    /*member to paint the GUI*/
    DefaultCategoryDataset dataset = new DefaultCategoryDataset();
    JFreeChart jchart;
    JPanel jp;

    /*constructor of the Hisrogram*/
    public Histogram() {
        try {
            sc = new Scanner((fis = new FileInputStream(filePath)));
        } catch (FileNotFoundException e) {
            System.out.println("File Not Found!");
            e.printStackTrace();
        }
        /*counting all kinds  of number of the  data file*/
        count();
        paintBarchart();
        try {
            fis.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        sc.close();
    }

    /*The Funtion that run the method to sort out the numbers of the file*/
    private void count() {
        int num;
        while (sc.hasNextInt()) {
            num = sc.nextInt();
            if (num <= 100) {
                countUnder100++;
                a[(num - 1) / 10]++;
            } else
                countOver100++;
        }
    }

    private void paintBarchart() {
        for (int i = 0; i < 10; i++) {
            dataset.addValue(a[i], "number", (i * 10 + 1) + "~" + (i + 1) * 10);
        }
        jchart = ChartFactory.createBarChart3D("first", "second", "third", dataset, PlotOrientation.VERTICAL, false, false, false);
        ChartPanel panel = new ChartPanel(jchart);
        JPanel jp = new JPanel();
        jp.add(panel, BorderLayout.CENTER);
        this.add(jp);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setBounds(100, 100, 750, 500);
        this.setVisible(true);
    }

    public static void main(String[] args) {
        new Histogram();
    }
}

