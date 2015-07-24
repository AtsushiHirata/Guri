import java.util.ArrayList;

/** 立体グリグリの図形データをウインドウに表示するため
    にデータ変換するクラス 
    Guri Geometric Transformation */
public class GuriGeoTrans {


  /** コンストラクタ */
  GuriGeoTrans() {
  }
  

  /**
   三次元空間での座標から、画面上の座標への変換
   @param  in  変換元の線分オブジェクト
   @param  out 変換後の線分オブジェクト
   @param  longitude  視点の経度
   @param  latitude   視点の緯度
   */
//  public static void RotateALine(GuriLine in, GuriLine out, int longitude, int latitude) {
  public  void RotateALine(GuriLine in, GuriLine out, int longitude, int latitude) {
    GuriPos  ins    = new GuriPos();
    GuriPos  ine    = new GuriPos();
    GuriPos  transs = new GuriPos();
    GuriPos  transe = new GuriPos();
    Double   lon    = new Double(Math.toRadians(longitude));
    Double   lat    = new Double(Math.toRadians(-latitude));//画面上で図形をこちら向きにするために、この値を逆転。

    in.getBothPos(ins,ine);
    GuriLine temp  = new GuriLine(ins.getX() * Math.cos(lon) + ins.getZ() * Math.sin(lon),
                                  ins.getY(),
                                  -ins.getX() * Math.sin(lon) + ins.getZ() * Math.cos(lon),
                                  ine.getX() * Math.cos(lon) + ine.getZ() * Math.sin(lon),
                                  ine.getY(),
                                  -ine.getX() * Math.sin(lon) + ine.getZ() * Math.cos(lon) );
    temp.getBothPos(transs,transe);
    GuriLine trans = new GuriLine(transs.getX(),
                                  transs.getY() * Math.cos(lat) + transs.getZ() * Math.sin(lat),
                                  -transs.getY() * Math.sin(lat) + transs.getZ() * Math.cos(lat),
                                  transe.getX(),
                                  transe.getY() * Math.cos(lat) + transe.getZ() * Math.sin(lat),
                                  -transe.getY() * Math.sin(lat) + transe.getZ() * Math.cos(lat) );
    trans.copyValue(out);
  }

  /**
    画面上の座標系（下向きY軸）から見て自然な座標系（上向きY軸）に変換。ついでに図形の中心が画面の中心に来るようにする。
    @param org 変換元の線分オブジェクト
    @param trans 変換後の線分オブジェクト
    @param width 画面の幅
    @param height 画面の高さ
    @param mid    表示する図形の中心座標
    @param r      表示倍率（拡大表示率）
   */
//  public static void TransToWindowAxis(GuriLine org, GuriLine trans, int width,int height,GuriPos mid,float r){
  public void TransToWindowAxis(GuriLine org, GuriLine trans, int width,int height,GuriPos mid,float r){

    GuriPos s = new GuriPos();
    GuriPos e = new GuriPos();
    Double temp;
    org.getBothPos(s,e);
    temp = r*(s.getX()-mid.getX())+width/2;
    s.setX(temp);
    temp = r*(e.getX()-mid.getX())+width/2;
    e.setX(temp);
    temp = height/2 - ( r*(s.getY()-mid.getY()));
    s.setY(temp);
    temp = height/2 - ( r*(e.getY()-mid.getY()));
    e.setY(temp);
    trans.setBothPos(s,e);
  }

}

