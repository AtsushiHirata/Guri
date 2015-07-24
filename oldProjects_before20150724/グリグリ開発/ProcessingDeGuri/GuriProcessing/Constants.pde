/** 
 立体グリグリ・データビューアで用いる各種定数

  @author  平田　敦（ひらた　あつし）
 */
class Constants {

   /**
    * テストモードかどうか
    */
  public static final boolean isTEST_MODE = true;


  /** データを読み込んだ後、最初に表示するときの図形の大きさの目安。
   *  図形の最大サイズを、ウインドウの大きさの何割程度にするかと言う値。
   */
  public static final double INIT_RATIO = 0.5;

  /** 図形を回転させる際の角度の最小単位。
   */
  public static final int    UNIT_ANGLE = 5;

  /** ウインドウのサイズ
   */
  public static final int    SCREEN_WIDTH  = 640;
  public static final int    SCREEN_HEIGHT = 480;

}

