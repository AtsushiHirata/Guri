import java.io.*;
import java.util.*;

/**
 * 立体グリグリのデータファイルを読み込む。スタンドアロンアプリケーション用。
 */
class GuriDataLoader implements IGuriDataLoader{

  public void LoadData(IGuriData gd,String fname){
    File f = new File(fname);
    if (f.exists()){
      System.out.println("File exists");

      try{
        BufferedReader br = new BufferedReader(new FileReader(f));
        String str = br.readLine();
        StringTokenizer st1 = new StringTokenizer(str);
        Double xmax = Double.parseDouble(st1.nextToken());
        Double ymax = Double.parseDouble(st1.nextToken());
        Double zmax = Double.parseDouble(st1.nextToken());
        int nlines = Integer.parseInt(st1.nextToken());
        String vals[] = new String[6];
        for (int i=0; i < nlines; ++i){
          str = br.readLine();
          StringTokenizer st2 = new StringTokenizer(str);
          int count=0;
          while(st2.hasMoreTokens()) {
            vals[count]=st2.nextToken();
            ++count;
            if (count > 5)  break;
          }
          gd.setLine( new GuriLine(Integer.parseInt(vals[0]),
                                   Integer.parseInt(vals[1]),
                                   Integer.parseInt(vals[2]),
                                   Integer.parseInt(vals[3]),
                                   Integer.parseInt(vals[4]),
                                   Integer.parseInt(vals[5])) );
        }
        String comment = br.readLine();
        gd.setComment(comment);
        br.close();
      }catch(FileNotFoundException e){
        System.out.println(e);
      }catch(IOException e){
        System.out.println(e);
      }
    } else {
      System.out.println("File not exists");
    }
  }
}// end of class GuriFileReader
