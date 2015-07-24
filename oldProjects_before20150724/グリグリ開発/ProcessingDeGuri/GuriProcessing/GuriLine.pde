/** 立体グリグリで使用する線分データを保持する */
public class GuriLine{
  GuriPos _start, //始点の座標
          _end;   //終点の座標

  /** 長さゼロの線分に初期化する。 */
  public GuriLine(){
    _start = new GuriPos();
    _end   = new GuriPos();
    _start.clear();
    _end.clear();
  }

  /** 引数に指定した座標で線分に初期化する。 */
  public GuriLine(GuriPos gp1,GuriPos gp2){
    _start = new GuriPos();
    _end   = new GuriPos();
    _start.setPos(gp1);
    _end.setPos(gp2);
  }

  /** 直接座標を指定して初期化 */
  public GuriLine(Double xs,Double ys,Double zs,Double xe,Double ye,Double ze){
    _start = new GuriPos(xs,ys,zs);
    _end   = new GuriPos(xe,ye,ze);
  }

  /** 直接座標を指定して初期化 引数はint。ポリモ。 */
  public GuriLine(int xs,int ys,int zs,int xe,int ye,int ze){
    _start = new GuriPos((double)xs,(double)ys,(double)zs);
    _end   = new GuriPos((double)xe,(double)ye,(double)ze);
  }


  /** 始点の座標をセットする。 */
  public void setStartPos(GuriPos p){
    _start.setPos(p);
  }
  public void getStartPos(GuriPos p){
    p.setPos(_start);
  }
  /** 終点の座標をセットする。 */
  public void setEndPos(GuriPos p){
    _end.setPos(p);
  }
  public void getEndPos(GuriPos p){
    p.setPos(_end);
  }

  /** 始点と終点の座標をセットする。 */
  public void setBothPos(GuriPos ps, GuriPos pe){
    _start.setPos(ps);
    _end.setPos(pe);
  }

  /** 始点と終点の座標を取り出す。 */
  public void getBothPos(GuriPos ps, GuriPos pe){
    ps.setPos(_start);
    pe.setPos(_end);
  }

  /** 線分の長さを返す */
  public Double getLength(){
    return _start.getDistance(_end);
  }

  /** 線分の値をコピーする */
  public void copyValue(GuriLine gl){
    gl.setBothPos(_start,_end);
  }

  /** 保持しているデータを文字列にして返す。 */
  public String toString(){
    return _start + "," + _end;
  }


}
