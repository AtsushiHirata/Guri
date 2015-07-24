/** GuriDataクラスのテスト */
class TestGuriData{

  public void Test(){
    //引数無しコンストラクタのテスト。
    GuriData gd = new GuriData();
    assert gd.getSize() == 0;
    assert gd.getComment().equals("立体グリグリ　データオブジェクト");
    
    //コメントの設定
    gd.setComment("テスト用コメント");
    assert gd.getComment().equals("テスト用コメント");

    //線分の本数の取得。まだ線分のセットメソッドが済んでいないため、テスト出来ない。後でもういちど。★★
    assert gd.getSize() ==0; //ここではまだゼロのはず。    


//  /** 引数に与えた線分への参照から、座標データをデータの配列にセット */
//  /** n番目の線分データを返す。データの先頭は0番目とする。線分データとして、線分オブジェクトを返す。 */
//  セットでテスト
    GuriLine gl = new GuriLine(1,2,3,4,5,6);
    gd.setLine(gl);
    assert gd.getLine(0).toString().equals("1,2,3,4,5,6");

    //getLine(n)のテスト   
    gl = new GuriLine(2,3,4,5,6,7);
    gd.setLine(gl);
    gl = new GuriLine(3,4,5,6,7,8);
    gd.setLine(gl);
    assert gd.getSize() == 3; //これでgetSizeのテストが成立する。
    assert gd.getLine(1).toString().equals("2,3,4,5,6,7");//二番目のデータの添え字は1
    
//  /** 最大座標値を返す。 */
    GuriPos gp = new GuriPos();
    gd.getMaxPos(gp);
    assert gp.toString().equals("6,7,8");
    
//  /** 最小座標値を返す。 */
    gd.getMinPos(gp);
    for (int i=0;i<gd.getSize();i++){      
      System.out.println("Line("+i+")="+gd.getLine(i).toString());
    }
    System.out.println("MinPos" + gp.toString());
    assert gp.toString().equals("1,2,3");
    
//  /** 中央座標値を返す。 */
    gd.getMidPos(gp);
    assert gp.toString().equals("3,4,5");

//  /** 最大寸法値を返す。 */
    assert gd.getMaxSize() == 5;
    
  }
  
  
}

