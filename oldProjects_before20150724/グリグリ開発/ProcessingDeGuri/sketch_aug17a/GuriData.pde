import java.util.ArrayList;


/** 
 * 立体グリグリの図形データを保持するクラス 
 *
 * @author 平田　敦
 */
public class GuriData implements IGuriData {
  ArrayList<GuriLine> _Lines;
  String          _Comment = new String();
  GuriPos         _maxpos  = new GuriPos();
  GuriPos         _minpos  = new GuriPos();
  GuriPos         _midpos  = new GuriPos();
  Long            _maxsize = new Long(0);//図形の最大寸法値を保持。

  /**
   * コンストラクタ。引数無しの生成では線分データは無しで。
   */
  GuriData() {
    _Lines = new ArrayList<GuriLine>();
    _Comment = "立体グリグリ　データオブジェクト";
  }
  

  public String getComment(){
    return _Comment;
  }
  public void setComment(String nv){
    _Comment = nv;
  }
  public Long getSize(){
    return new Long(_Lines.size());
  }
  

  /** 引数に与えた線分への参照から、座標データをデータの配列にセット */
  public void setLine(GuriLine nl){
    GuriLine TempLine = new GuriLine();
    nl.copyValue(TempLine);
    _Lines.add(TempLine);
    searchMaxMin();
    //今は、線分が追加される度に全部のデータと比較して更新しているが、
    //追加されたデータが現在の最大値最小値と比較してどうかだけで済むはずではないか。
    //SearchMaxMinはSearchAllDataAndGetMaxMinとして(長い！)
    //ここに置くべきメソッドはsetIfProjectedValue(TempLine)とかにすべきでは？
    //（もし突出したデータ(Max or Min)があれば更新するというメソッド）。
    //そうすれば、計算量がO(1)になる。今のsearchMaxMinはO(\sigma(x)^n_1)だったから・・・。
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
//    searchMaxMin();
    p.setPos(_maxpos);
  }

  /** 最小座標値を返す。 */
  public void getMinPos(GuriPos p){
//    searchMaxMin();
    p.setPos(_minpos);
  }

  /** 中央座標値を返す。 */
  public void getMidPos(GuriPos p){
//    searchMaxMin();
    p.setPos(_midpos);
  }

  /** 最大寸法値を返す。 */
  public Long getMaxSize(){
//    searchMaxMin();
    return _maxsize;
  }


  /**
   * 最大座標、最小座標を検索し、各フィールドに保管する。
   * ついでに中央座標値も保管する。
   */
  private void searchMaxMin(){
    GuriPos  tps = new GuriPos();
    GuriPos  tpe = new GuriPos();

    //System.out.println("SearchMaxMin");
    for (int i=0; i < _Lines.size(); i++){

      ( _Lines.get(i) ).getBothPos(tps,tpe);

      _maxpos.setX( Math.max( _maxpos.getX() , Math.max(tps.getX(),tpe.getX()) ));
      _maxpos.setY( Math.max( _maxpos.getY() , Math.max(tps.getY(),tpe.getY()) ));
      _maxpos.setZ( Math.max( _maxpos.getZ() , Math.max(tps.getZ(),tpe.getZ()) ));

      _minpos.setX( Math.min( _minpos.getX() , Math.min(tps.getX(),tpe.getX()) ));
      _minpos.setY( Math.min( _minpos.getY() , Math.min(tps.getY(),tpe.getY()) ));
      _minpos.setZ( Math.min( _minpos.getZ() , Math.min(tps.getZ(),tpe.getZ()) ));

    }
    //_maxsizeを得る
    _maxsize = Math.max( (long)( _maxpos.getX() - _minpos.getX() ) ,
                         Math.max( (long)( _maxpos.getY() - _minpos.getY() ) , 
                                   (long)( _maxpos.getZ() - _minpos.getZ() ) 
                                 )
                       );
    //中央座標を得るを
    _midpos.setPos((_maxpos.getX()+_minpos.getX())/2,
                   (_maxpos.getY()+_minpos.getY())/2,
                   (_maxpos.getZ()+_minpos.getZ())/2);
  }// end of searchMaxMin

}

