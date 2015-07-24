/** GuriPosクラスの各メソッドをテストする。 */
class TestGuriPos{
  
  GuriPos gp;

  public void Test(){
    //---------------------------------------------------
    //引数無しコンストラクタのテスト
    //インスタンス生成直後のデフォルト値が0,0,0かチェック
    //ゲッターのチェックも兼ねる
    gp = new GuriPos();
    //文字列化してチェック
    assert gp.toString().equals("0,0,0") == true;   

    //---------------------------------------------------
    //引数ありコンストラクタ。引数はdouble値
    gp = new GuriPos(3.D,2.D,1.D);
    //文字列化してチェック
    assert gp.toString().equals("3,2,1") == true;   
    
    
    //---------------------------------------------------    
    //セッターメソッドをチェック
    //整数で
    gp.setX(4);
    gp.setY(5);
    gp.setZ(6);
    assert gp.toString().equals("4,5,6") == true;   
    //doubleで
    gp.setX(4D);
    gp.setY(5D);
    gp.setZ(6D);
    assert gp.toString().equals("4,5,6") == true;   
    //float用のセッターメソッドまでは、準備する気ないなぁ。
    

    //--------------------------------------------------- 
    //1,2,3を1度にセットしてチェック　整数版
    gp.setPos(1,2,3);
    //文字列化チェック
    assert gp.toString().equals("1,2,3") == true;   

    //1,2,3を1度にセットしてチェック　double版
    gp.setPos(4D,5D,6D);
    assert gp.toString().equals("4,5,6") == true;   
   
    //---------------------------------------------------
    //オブジェクトの値を渡す
    GuriPos gp2 = new GuriPos(7,8,9);
    gp.setPos(gp2);
    assert gp.toString().equals("7,8,9") == true;   
    
    //---------------------------------------------------
    //距離計測
    gp.clear();
    gp2.setPos(1,0,0);
    assert gp.getDistance(gp2) == 1;
    gp2.setPos(0,2,0);
    assert gp.getDistance(gp2) == 2;
    gp2.setPos(0,0,3);
    assert gp.getDistance(gp2) == 3;
    gp2.setPos(1,1,1);
    assert gp.getDistance(gp2) == Math.sqrt(3);    
    
    //---------------------------------------------------
    //値のクリア
    gp.clear();
    assert gp.toString().equals("0,0,0") == true;

    //---------------------------------------------------
    //オブジェクトからオブジェクトへの座標値のコピー
    gp2.clear();       //gp2=(0,0,0)
    gp.setPos(1,1,1);  //gp =(1,1,1)
    gp.getPos(gp2);    //gp2=(1,1,1)にならなければならない。
    assert gp2.toString().equals("1,1,1") == true;
    
  } 
}


