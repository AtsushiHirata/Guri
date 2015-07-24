/** GuriGeoTransクラスの各メソッドをテストする。 */
class TestGuriGeoTrans{
  
  GuriGeoTrans ggt;
  
  public void Test(){
    
    ggt = new GuriGeoTrans();
    
    GuriLine gl1 = new GuriLine(1,1,1,10,10,10);
    GuriLine gl2 = new GuriLine();
    int lon = 45;
    int lat = 30;
    
    ggt.RotateALine(gl1,gl2,lon,lat);
    System.out.println("Translatede Line is " + gl2.toString() );
    
//  /**
//   三次元空間での座標から、画面上の座標への変換
//   @param  in  変換元の線分オブジェクト
//   @param  out 変換後の線分オブジェクト
//   @param  longitude  視点の経度
//   @param  latitude   視点の緯度
//   */
//  public static void RotateALine(GuriLine in, GuriLine out, int longitude, int latitude) {
//  }

    GuriLine gl3 = new GuriLine();
    int wid = 300;
    int hei = 200;
    GuriPos gp = new GuriPos(300/2,200/2,0);
    float r = 1.0;
    
    ggt.TransToWindowAxis(gl2,gl3,wid,hei,gp,r);
    System.out.println("Trans to Window is " + gl3.toString());
//  /**
//    画面上の座標系（下向きY軸）から見て自然な座標系（上向きY軸）に変換。ついでに図形の中心が画面の中心に来るようにする。
//    @param org 変換元の線分オブジェクト
//    @param trans 変換後の線分オブジェクト
//    @param width 画面の幅
//    @param height 画面の高さ
//    @param mid    表示する図形の中心座標
//    @param r      表示倍率（拡大表示率）
//   */
//  public static void TransToWindowAxis(GuriLine org, GuriLine trans, int width,int height,GuriPos mid,float r){
//    GuriPos s = new GuriPos();
//    GuriPos e = new GuriPos();
//    Double temp;
//    org.getBothPos(s,e);
//    temp = r*(s.getX()-mid.getX())+width/2;
//    s.setX(temp);
//    temp = r*(e.getX()-mid.getX())+width/2;
//    e.setX(temp);
//    temp = height/2 - ( r*(s.getY()-mid.getY()));
//    s.setY(temp);
//    temp = height/2 - ( r*(e.getY()-mid.getY()));
//    e.setY(temp);
//    trans.setBothPos(s,e);
//  }
//
//}

        
  } 
}
