/** GuriLineクラスの各メソッドをテストする。 */
class TestGuriLine{

  public void Test(){
    //toStringメソッドが正しく動作するものとしてテストに入る。
    
    //引数無しコンストラクタのテスト
    GuriLine gl = new GuriLine();
    assert gl.toString().equals("0,0,0,0,0,0");

//  /** 引数に指定した座標で線分に初期化するコンストラクタのテスト。 */
    GuriPos  gp1 = new GuriPos(1,1,1);
    GuriPos  gp2 = new GuriPos(2,2,2);
    gl = new GuriLine(gp1,gp2);
    assert gl.toString().equals("1,1,1,2,2,2");

//  /** 直接座標を指定して初期化するコンストラクタのテスト。引数はdouble　*/
    gl = new GuriLine(3d,3d,3d,4d,4d,4d);
    assert gl.toString().equals("3,3,3,4,4,4");

//  /** 直接座標を指定して初期化するコンストラクタのテスト。 引数はint。ポリモ。 */
    gl = new GuriLine(5,5,5,6,6,6);
    assert gl.toString().equals("5,5,5,6,6,6");

//  /** 始点座標のゲッター・セッターのテスト */
    gl = new GuriLine(0,0,0,0,0,0);
    gp1 = new GuriPos(3,3,3);
    gl.setStartPos(gp1);
    assert gl.toString().equals("3,3,3,0,0,0");
    
    gp2 = new GuriPos(0,0,0);
    gl.getStartPos(gp2);
    assert gp2.toString().equals("3,3,3");


//  /** 終点座標のゲッター・セッターのテスト　*/
    gl = new GuriLine(0,0,0,0,0,0);
    gp1 = new GuriPos(4,4,4);
    gl.setEndPos(gp1);
    assert gl.toString().equals("0,0,0,4,4,4");
    
    gp2 = new GuriPos(0,0,0);
    gl.getEndPos(gp2);
    assert gp2.toString().equals("4,4,4");


//  /** 始点と終点の座標のゲッター・セッター。 */
    gp1 = new GuriPos(5,5,5);
    gp2 = new GuriPos(6,6,6);
    gl.setBothPos(gp1,gp2);
    assert gl.toString().equals("5,5,5,6,6,6");

    gl = new GuriLine(7,7,7,8,8,8);
    gl.getBothPos(gp1,gp2);
    assert gp1.toString().equals("7,7,7");
    assert gp2.toString().equals("8,8,8");
    
    
//  /** 線分の長さを返す */
    // (7,7,7)-(8,8,8)の長さはRoot(3)
    assert gl.getLength() == Math.sqrt(3);
    
//  /** 線分の値をコピーする */
    GuriLine gl2 = new GuriLine();
    gl.copyValue(gl2);
    assert gl2.toString().equals("7,7,7,8,8,8");
    
//  /** 保持しているデータを文字列にして返す。 */
    // チェック済み

  }
}
