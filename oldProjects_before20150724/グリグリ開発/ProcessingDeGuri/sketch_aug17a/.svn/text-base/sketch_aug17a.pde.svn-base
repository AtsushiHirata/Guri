String _mode = new String("test");
//String _mode = new String("run");

void setup(){
  if ( _mode.equals("test") ) {
    print("Test mode");
    TestGuriPos  tgp = new TestGuriPos();
    tgp.Test();
    TestGuriLine tgl = new TestGuriLine();
    tgl.Test();
    TestGuriData tgd = new TestGuriData();
    tgd.Test();
    
    //テストをクリアしたら　グリーンサイン　のつもり
    background(0, 255, 0);
    size(Constants.SCREEN_WIDTH,Constants.SCREEN_HEIGHT);
    
  } else {
    print("Run mode");
    size(Constants.SCREEN_WIDTH,Constants.SCREEN_HEIGHT);// スケッチのサイズ設定
  }
}

// メインのループ処理
void draw(){
}

