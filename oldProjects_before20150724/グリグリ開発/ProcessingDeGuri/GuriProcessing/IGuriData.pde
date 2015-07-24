public interface IGuriData {
  public String   getComment();
  public void     setComment(String nv);
  public Long     getSize();
  /** 引数に与えた線分への参照から、座標データをデータの配列にセット */
  public void     setLine(GuriLine nl);
  /** n番目の線分データを返す。データの先頭は0番目とする。線分データとして、線分オブジェクトを返す。 */
  public GuriLine getLine(int n);
  public String   toString();
  public void     getMaxPos(GuriPos p);
  public void     getMinPos(GuriPos p);
  public void     getMidPos(GuriPos p);
  public Long     getMaxSize();//図形の最大寸法値
}

