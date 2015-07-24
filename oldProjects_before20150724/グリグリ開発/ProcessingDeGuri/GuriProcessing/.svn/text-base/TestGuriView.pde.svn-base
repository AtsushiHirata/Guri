/** GuriPosクラスの各メソッドをテストする。 */
class TestGuriView{
  
  GuriView gv;

  public void Test(){
    gv = new GuriView();

    gv.DrawData();
    
    
    GuriData gd = new GuriData();
    gv = new GuriView(gd);
    gd = gv.getDataObject();
    assert gd.getComment().equals("立体グリグリ　データオブジェクト");
    
    GuriData gd2 = new GuriData();
    gd2.setComment("ふたつめのデータオブジェクト");
    gv = new GuriView(gd2);
    gd = gv.getDataObject();
    assert gd.getComment().equals("ふたつめのデータオブジェクト");
        
  } 
}


