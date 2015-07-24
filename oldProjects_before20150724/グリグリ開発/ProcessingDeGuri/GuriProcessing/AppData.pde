import java.util.ArrayList;


/** 立体グリグリのアプリケーション実行情報を保持するクラス */
public class AppData{

  // 変数・オブジェクトの宣言
  private String _DataPath;        //データを読み込む／保存するディレクトリ(フルパス)
  private String _FileName;        //現在保持しているデータのファイル名
  private IGuriData _CurrentData;  //現在保持しているグリグリデータオブジェクトへの参照。
  private int    _Longitude;       //視点の経度（左右方向）
  private int    _Latitude;        //視点の緯度（上下方向）
  private float  _ViewingRatio = 1;//現在の図形表示比率
  private float  _MaxViewingRatio; //拡大表示時の最大拡大比率
  private float  _MinViewingRatio; //縮小表示時の最小縮小比率
  private int    _UnitLength;      //作図ポインタの移動距離の最小単位[dot,pixel]
  private int    _UnitAngle;       //図形の回転角の最小単位[°,deg]
  private int    _DrawableMaxSize; //ユーザが図形を描く際の許容最大座標
  private int    _MainFormWidth;   //メインフォームの幅
  private int    _MainFormHeight;  //メインフォームの高さ
  private int    _ChalkThickness;  //チョークの太さ。で、線分の太さにしたい。
  private int    _DrawingPointerSize; 
                                   //作図ポインタ（円形）の直径
  private String _Mode;            //表示モードか、"VIEW_MODE"
                                   //作図モードか。"DRAW_MODE"
                                   //将来モードが増えたときのために、
                                   //文字列でモード保持。Enumすべきなんだろうな。
                                   //連続回転の方向。
//  enum TurningDirection { LEFT,RIGHT,UP,DOWN,STOP };
  private String _ContinuousTurningDirection = "STOP";
  private String _TurningDirection[] ={ "LEFT","RIGHT","UP","DOWN","STOP" };

  private int    _TickTime;        //連続回転中の静止時間　単位m秒（ミリ秒）
//private Boolean _ThirdAngleProjectionMethodMode;
                                   //現在三面図表示中かどうか
  private ArrayList<String> _FileNameHistory;
                                   //データファイルの履歴
  private int     _FileNameHistoryNum;
                                   //データファイルの履歴数
//--------------------------------------------閲覧モード
  private long    _VIEW_MODE_FigColor;
                                   //ワイヤーフレームの色
  private long    _VIEW_MODE_BackColor;
                                   //背景の色
//--------------------------------------------作図モード
  private long    _DRAW_MODE_FigColor;
                                   //ワイヤーフレームの色
  private long    _DRAW_MODE_BackColor;
                                   //背景の色
  private long    _TempLineColor;  //未決定の線の色。線引き中の線の色。
  private GuriPos _PointerFrom;    //作図ポインタ　 始点の位置

  private long    _PointerFromColor;
                                   //始点の色

  private GuriPos _PointerTo;      //作図ポインタ　 終点の位置

  private long    _PointerToColor; //終点の色

  private String  _DrawingCondition;
                                   //作図状態を保持
//    '①始点未決定　＆　終点未決定   "FROM"
//    '②始点決定　　＆　終点未決定   "TO"
//    '終点が決定したら①にもどす

/* ----------------------------------------------------------- 
//　未実装部分  
Private m_strDifficulty As String       '作図の難易度
    '"DIFFICULTY_BEGINNER"
    '"DIFFICULTY_MIDIUM"
    '"DIFFICULTY_SENIOR"
    
Private m_intAxisLineLength As Integer      '座標軸の長さ
Private m_intAxisLineSize As Integer        '座標軸の太さ
'座標軸の長さは、作図可能領域の大きさを表す
Private m_intSubAxisLineLength As Integer   '補助座標軸の長さ
Private m_intSubAxisLineSize As Integer     '補助座標軸の太さ
'補助座標軸は、無限遠まで伸びる座標軸


Private m_booProInterface As Boolean        'プロフェッショナルインターフェイスが有効か
                                            '初期値は無効
Private m_intLineNumber As Long             'プロインターフェイスに表示中の線分の番号


Private m_strDataFileVersion As String         'データファイルのバージョン
---------------------------------------------------------------*/

  /**
   * コンストラクタ
   */
  AppData() {
    _CurrentData = new GuriDataForSplash();
  }
  
  AppData(IGuriDataLoader igdl,String fullpath_filename){
    _CurrentData = new GuriData();
    igdl.LoadData(_CurrentData,fullpath_filename);
  }

  public IGuriData getGuriDataRef(){
    return _CurrentData;
  }

/*  public void setGuriDataRef(IGuriData nd){
    _CurrentData = nd;
  }
*/


  public int getLongitude(){
    return _Longitude;
  }
  public int getLatitude(){
    return _Latitude;
  }
  public void setLongitude(int nv){
    if(nv>360) nv = nv % 360;
    if(nv<0){
      nv = nv % 360;
      nv += 360;
    }
    _Longitude = nv;
  }
  public void setLatitude(int nv){
    if(nv>360) nv = nv % 360;
    if(nv<0){
      nv = nv%360;
      nv += 360;
    }
    _Latitude = nv;
  }

  public void turnUnitAngle(String direction, String PlusMinus){
    if (direction == "LONGITUDE"){
      if (PlusMinus == "+"){
        _Longitude += Constants.UNIT_ANGLE;
      } else if (PlusMinus == "-"){
        _Longitude -= Constants.UNIT_ANGLE;
      }
      if(_Longitude > 360) _Longitude -= 360;
      if(_Longitude <   0) _Longitude += 360;
    }
    if (direction == "LATITUDE") {
      if (PlusMinus == "+"){
        _Latitude += Constants.UNIT_ANGLE;
      } else if (PlusMinus == "-"){
        _Latitude -= Constants.UNIT_ANGLE;
      }
      if(_Latitude > 360) _Latitude -= 360;
      if(_Latitude <   0) _Latitude += 360;
    } 
  }

  /** 等角投影図の視点をセットする。" */
  public void setIsometricViewAngle(){
    _Longitude = -45;
    _Latitude  = 35;
  }

  /** 正面図 */
  public void setFrontViewAngle(){
    _Longitude = 0;
    _Latitude = 0;
  }

  /** 平面図 */
  public void setTopViewAngle(){
    _Longitude = 0;
    _Latitude = 90;
  }

  /** 右側面図 */
  public void setRightSideViewAngle(){
    _Longitude = -90;
    _Latitude = 0;
  }



  public float getRatio(){
    return _ViewingRatio;
  }

  public void setRatio(float r){
    _ViewingRatio = r;
  }

  public void zoomIn(){
    _ViewingRatio *= 1.1;
  }
  
  public void zoomOut(){
    _ViewingRatio *= 0.9;
  }

  public void changeContinuousTurningDirection(){
//      switch (_ContinuousTurningDirection) {
//        case LEFT:     _ContinuousTurningDirection = TurningDirection.RIGHT;
//        case RIGHT:    _ContinuousTurningDirection = TurningDirection.UP;
//        case UP:       _ContinuousTurningDirection = TurningDirection.DOWN;
//        case DOWN:     _ContinuousTurningDirection = TurningDirection.STOP;
//        case STOP:     _ContinuousTurningDirection = TurningDirection.LEFT;
        if (_ContinuousTurningDirection== "LEFT")   _ContinuousTurningDirection = "RIGHT";
        if (_ContinuousTurningDirection== "RIGHT")  _ContinuousTurningDirection = "UP";
        if (_ContinuousTurningDirection== "UP")     _ContinuousTurningDirection = "DOWN";
        if (_ContinuousTurningDirection== "DOWN")   _ContinuousTurningDirection = "STOP";
        if (_ContinuousTurningDirection== "STOP")   _ContinuousTurningDirection = "LEFT";
//      }
  }
}
