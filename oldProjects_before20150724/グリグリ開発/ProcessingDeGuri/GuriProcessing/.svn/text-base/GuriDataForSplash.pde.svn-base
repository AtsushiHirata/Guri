import java.util.ArrayList;

/** 立体グリグリ起動時に表示する図形データを保持するクラス */
public class GuriDataForSplash implements IGuriData {
  ArrayList<GuriLine> _Lines;
  String          _Comment;

  GuriPos         _maxpos = new GuriPos();
  GuriPos         _minpos = new GuriPos();
  GuriPos         _midpos = new GuriPos();  

  Double          _maxsize;

  /** コンストラクタ。各データをよしなに扱う */
  GuriDataForSplash() {
    _Lines = new ArrayList<GuriLine>();
    _setLines();
    _Comment = "超簡易3D editor 立体グリグリ Splash用データ";
  }
  

  /** コメントを返す */
  public String getComment(){
    return _Comment;
  }
  /** コメントはリードオンリー属性 */
  public void setComment(String nv){
//    _Comment = nv;
  }

  /** データに含まれる線分の本数を返す */
  public Long getSize(){
    return (long) _Lines.size();
  }
  

  /** 引数に与えた線分への参照から、座標データをデータの配列にセット　と見せかけて無視
      テスト用、あるいはスプラッシュ用のデータなので、変更は不可                        */
  public void setLine(GuriLine nl){
    //Do nothing!
  }


  /** n番目の線分データを返す。データの先頭は0番目とする。線分データとして、線分オブジェクトを返す。 */
  public GuriLine getLine(int n){
    if ((0<=n) && (n<_Lines.size())){
      return _Lines.get(n);
    } else {
      return null;
    }
  }

  /** 最大座標値を返す。 */
  public void getMaxPos(GuriPos p){
    p.setPos(_maxpos);
  }

  /** 最小座標値を返す。 */
  public void getMinPos(GuriPos p){
    p.setPos(_minpos);
  }

  /** 中央座標値を返す。 */
  public void getMidPos(GuriPos p){
    p.setPos(_midpos);
  }

  public Long getMaxSize(){
    return _maxsize.longValue();
  }


  /** 図形データを設定する。 */
  private void _setLines(){
    _Lines.add(new GuriLine( 0, 0, 0,80, 0, 0));
    _Lines.add(new GuriLine(80, 0, 0,80,40, 0));
    _Lines.add(new GuriLine(80,40, 0,40,40, 0));
    _Lines.add(new GuriLine(40,40, 0, 0,80, 0));
    _Lines.add(new GuriLine( 0,80, 0, 0, 0, 0));
    _Lines.add(new GuriLine( 0, 0, 0, 0, 0,40));
    _Lines.add(new GuriLine( 0, 0,40, 0,80,40));
    _Lines.add(new GuriLine( 0,80,40, 0,80, 0));
    _Lines.add(new GuriLine( 0,80,40,40,40,40));
    _Lines.add(new GuriLine(40,40,40,40,40, 0));
    _Lines.add(new GuriLine(40,40,40,80,40,40));
    _Lines.add(new GuriLine(80,40,40,80, 0,40));
    _Lines.add(new GuriLine(80, 0,40, 0, 0,40));
    _Lines.add(new GuriLine(80, 0,40,80, 0, 0));
    _Lines.add(new GuriLine(80,40, 0,80,40,40));
    _maxpos.setPos(80,80,40);
    _minpos.setPos(0,0,0);
    _midpos.setPos(40,40,20);
    _maxsize = 80D;
  }


}

