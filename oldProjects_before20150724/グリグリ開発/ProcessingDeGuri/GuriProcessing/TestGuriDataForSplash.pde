/** GuriDataクラスのテスト */
class TestGuriDataForSplash{

  public void Test(){

    GuriDataForSplash gdf = new GuriDataForSplash();
    //各種属性はReadOnly
    //コメント
    assert gdf.getComment().equals("超簡易3D editor 立体グリグリ Splash用データ");
    gdf.setComment("HogeFuga");
    assert gdf.getComment().equals("超簡易3D editor 立体グリグリ Splash用データ");
    //線の本数
    assert gdf.getSize() == 15;
    //線分データ
    GuriLine gl = new GuriLine(1,2,3,4,5,6);
    assert gl.toString().equals("1,2,3,4,5,6");
    gdf.setLine(gl);
    assert gdf.getSize() == 15; //線の本数は変わらないはず。
    assert gdf.getLine(0).toString().equals("0,0,0,80,0,0");
    assert gdf.getLine(1).toString().equals("80,0,0,80,40,0");
    assert gdf.getLine(20) == null;
    //最大座標値
    GuriPos gp = new GuriPos();
    gdf.getMaxPos(gp);
    assert gp.toString().equals("80,80,40");
    //最小座標値
    gdf.getMinPos(gp);
    assert gp.toString().equals("0,0,0");
    //中央座標値
    gdf.getMidPos(gp);
    assert gp.toString().equals("40,40,20");
   //最大寸法
    assert gdf.getMaxSize() == 80D;

  }
  
  
}
