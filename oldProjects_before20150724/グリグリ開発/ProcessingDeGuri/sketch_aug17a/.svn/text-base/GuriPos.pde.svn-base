/** 立体グリグリで使用する座標値を保持する。 */
public class GuriPos{
  Double  _x,_y,_z;

  /** 引数無しコンストラクタ。ゼロクリアする。*/
  GuriPos() {
    _x = new Double(0);
    _y = new Double(0);
    _z = new Double(0);
  }

  /** 引数ありコンストラクタ。引数値をセットする。 */
  GuriPos(Double nx,Double ny,Double nz){
    _setPosVals(nx,ny,nz);
  }

  private void _setPosVals(Double nx,Double ny,Double nz){
    _x = new Double(0); //頂点のX座標
    _y = new Double(0);
    _z = new Double(0);
    this.setX(nx);
    this.setY(ny);
    this.setZ(nz);
  }

  /** 引数ありコンストラクタ。引数がint型の場合。 */
  GuriPos(Integer nx,Integer ny,Integer nz){
    _setPosVals(nx.doubleValue(),ny.doubleValue(),nz.doubleValue());
  }

  /** ゲッター */
  public Double getX(){
    return _x;
  }
  /** ゲッター */
  public Double getY(){
    return _y;
  }
  /** ゲッター */
  public Double getZ(){
    return _z;
  }
  /** セッター */
  public void setX(Double newval){
    _x = newval;
  }
  /** セッター */
  public void setY(Double newval){
    _y = newval;
  }
  /** セッター */
  public void setZ(Double newval){
    _z = newval;
  }

  /** セッター */
  public void setX(Integer newval){
    _x = newval.doubleValue();
  }
  /** セッター */
  public void setY(Integer newval){
    _y = newval.doubleValue();
  }
  /** セッター */
  public void setZ(Integer newval){
    _z = newval.doubleValue();
  }


  /** 渡された座標オブジェクトの内容をセットする */
  public void setPos(GuriPos that){
    _x = that.getX();
    _y = that.getY();
    _z = that.getZ();
  }
  /** 渡された座標値をセットする。ポリモーフィズム */
  public void setPos(Double x,Double y,Double z){
    _x = x;
    _y = y;
    _z = z;
  }
  /** 渡された座標値をセットする。引数int。ポリモーフィズム */
  public void setPos(int x,int y,int z){
    _x = (double)x;
    _y = (double)y;
    _z = (double)z;
  }

  /** 渡された座標オブジェクトに座標値をセットする */
  public void getPos(GuriPos that){
    that.setPos(_x,_y,_z);
  }

  /** 座標データをゼロクリアする。 */
  public void clear(){
    _x = 0.D;
    _y = 0.D;
    _z = 0.D;
  }

  /** 引数に受け取った座標オブジェクトとの距離を返す。 */
  public double getDistance(GuriPos that){
    Double xdiff = new Double(_x - that.getX());
    Double ydiff = new Double(_y - that.getY());
    Double zdiff = new Double(_z - that.getZ());
    return Math.sqrt(zdiff*zdiff + xdiff*xdiff + ydiff*ydiff);
  }

  /** 保持しているデータをCSV形式で返す。 */
  public String toString(){
    return  _x.intValue() + "," +  _y.intValue() + "," + _z.intValue();
  }
}

