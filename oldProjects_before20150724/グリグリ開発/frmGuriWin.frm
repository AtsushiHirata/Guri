VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Object = "{39B98B2B-C4B1-4237-9410-C3524A07059E}#1.1#0"; "ctlguriview.ocx"
Begin VB.Form frmGuriWin 
   BorderStyle     =   0  'なし
   Caption         =   "Form1"
   ClientHeight    =   7935
   ClientLeft      =   105
   ClientTop       =   105
   ClientWidth     =   9180
   Icon            =   "frmGuriWin.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7935
   ScaleWidth      =   9180
   StartUpPosition =   2  '画面の中央
   Begin ComctlLib.Toolbar tlbToolBar 
      Align           =   1  '上揃え
      Height          =   660
      Left            =   0
      TabIndex        =   14
      Top             =   0
      Width           =   9180
      _ExtentX        =   16193
      _ExtentY        =   1164
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Appearance      =   1
      ImageList       =   "imglstToolBar"
      _Version        =   327682
      BeginProperty Buttons {0713E452-850A-101B-AFC0-4210102A8DA7} 
         NumButtons      =   19
         BeginProperty Button1 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdFin"
            Object.ToolTipText     =   "立体グリグリの終了"
            Object.Tag             =   ""
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
            Style           =   3
            MixedState      =   -1  'True
         EndProperty
         BeginProperty Button3 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdFigLoad"
            Object.ToolTipText     =   "図形データの読み込み"
            Object.Tag             =   ""
            ImageIndex      =   2
         EndProperty
         BeginProperty Button4 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdFigSave"
            Object.ToolTipText     =   "図形データの保存"
            Object.Tag             =   ""
            ImageIndex      =   3
         EndProperty
         BeginProperty Button5 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
            Style           =   3
            MixedState      =   -1  'True
         EndProperty
         BeginProperty Button6 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdDrawFig"
            Object.ToolTipText     =   "作図モードと通常モードの切り替えボタン"
            Object.Tag             =   ""
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdNewFig"
            Object.ToolTipText     =   "今までの図を消して新しい図を描く"
            Object.Tag             =   ""
            ImageIndex      =   5
         EndProperty
         BeginProperty Button8 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
            Style           =   3
            MixedState      =   -1  'True
         EndProperty
         BeginProperty Button9 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdMagnify"
            Object.ToolTipText     =   "図を大きくする"
            Object.Tag             =   ""
            ImageIndex      =   6
         EndProperty
         BeginProperty Button10 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdReduce"
            Object.ToolTipText     =   "図を小さくする"
            Object.Tag             =   ""
            ImageIndex      =   7
         EndProperty
         BeginProperty Button11 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
            Style           =   3
            MixedState      =   -1  'True
         EndProperty
         BeginProperty Button12 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdContinuousTurn"
            Object.ToolTipText     =   "図を回転し続けさせる"
            Object.Tag             =   ""
            ImageIndex      =   8
         EndProperty
         BeginProperty Button13 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdESC"
            Object.ToolTipText     =   "回転を止める"
            Object.Tag             =   ""
            ImageIndex      =   9
         EndProperty
         BeginProperty Button14 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
            Style           =   3
            MixedState      =   -1  'True
         EndProperty
         BeginProperty Button15 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdFrontView"
            Object.ToolTipText     =   "正面図を表示"
            Object.Tag             =   ""
            ImageIndex      =   10
         EndProperty
         BeginProperty Button16 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdTopView"
            Object.ToolTipText     =   "平面図を表示"
            Object.Tag             =   ""
            ImageIndex      =   11
         EndProperty
         BeginProperty Button17 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdSideView"
            Object.ToolTipText     =   "右側面図を表示"
            Object.Tag             =   ""
            ImageIndex      =   12
         EndProperty
         BeginProperty Button18 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdEqualAngleView"
            Object.ToolTipText     =   "等角図を表示"
            Object.Tag             =   ""
            ImageIndex      =   13
         EndProperty
         BeginProperty Button19 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdThirdAngleProjectionMethod"
            Object.ToolTipText     =   "三角法で図形を表示します。"
            Object.Tag             =   ""
            ImageIndex      =   14
         EndProperty
      EndProperty
      BorderStyle     =   1
   End
   Begin VB.Frame fraCopyright 
      BackColor       =   &H0000FFFF&
      Caption         =   "Copyright Infomation"
      Height          =   975
      Left            =   4320
      TabIndex        =   47
      Top             =   6240
      Width           =   4695
      Begin VB.Label lblReferenceString 
         BorderStyle     =   1  '実線
         Height          =   255
         Left            =   1200
         TabIndex        =   51
         Top             =   600
         Width           =   3375
      End
      Begin VB.Label lblAuthorString 
         BorderStyle     =   1  '実線
         Height          =   255
         Left            =   1200
         TabIndex        =   50
         Top             =   240
         Width           =   3375
      End
      Begin VB.Label lblReference 
         BackColor       =   &H0000FFFF&
         Caption         =   "参考情報"
         Height          =   255
         Left            =   120
         TabIndex        =   49
         Top             =   600
         Width           =   735
      End
      Begin VB.Label lblAuthor 
         BackColor       =   &H0000FFFF&
         Caption         =   "著作者"
         Height          =   255
         Left            =   120
         TabIndex        =   48
         Top             =   240
         Width           =   855
      End
   End
   Begin DevGuriViewControlProject.ctlGuriView ctlGuriView 
      Height          =   735
      Left            =   360
      TabIndex        =   46
      Top             =   1560
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   1296
   End
   Begin VB.PictureBox picProInterface 
      Height          =   5175
      Left            =   6720
      Picture         =   "frmGuriWin.frx":08CA
      ScaleHeight     =   5115
      ScaleWidth      =   2235
      TabIndex        =   19
      Top             =   840
      Width           =   2295
      Begin VB.CommandButton cmdProInterface 
         Caption         =   "新しい線"
         Height          =   375
         Index           =   6
         Left            =   480
         Picture         =   "frmGuriWin.frx":8232
         TabIndex        =   38
         Top             =   4560
         Width           =   1455
      End
      Begin VB.CommandButton cmdProInterface 
         Caption         =   "削除"
         Height          =   375
         Index           =   5
         Left            =   480
         Picture         =   "frmGuriWin.frx":853C
         TabIndex        =   37
         Top             =   4200
         Width           =   1455
      End
      Begin VB.CommandButton cmdProInterface 
         Caption         =   "決定"
         Height          =   375
         Index           =   4
         Left            =   480
         Picture         =   "frmGuriWin.frx":8846
         TabIndex        =   36
         Top             =   3840
         Width           =   1455
      End
      Begin VB.VScrollBar vscrLineNumber 
         Height          =   735
         Left            =   1800
         TabIndex        =   35
         Top             =   2520
         Width           =   255
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '右揃え
         Height          =   375
         Index           =   5
         Left            =   1320
         TabIndex        =   29
         Text            =   "0"
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '右揃え
         Height          =   375
         Index           =   4
         Left            =   1320
         TabIndex        =   28
         Text            =   "0"
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '右揃え
         Height          =   375
         Index           =   3
         Left            =   840
         TabIndex        =   27
         Text            =   "0"
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '右揃え
         Height          =   375
         Index           =   2
         Left            =   840
         TabIndex        =   26
         Text            =   "0"
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '右揃え
         Height          =   375
         Index           =   1
         Left            =   360
         TabIndex        =   25
         Text            =   "0"
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '右揃え
         Height          =   375
         Index           =   0
         Left            =   360
         TabIndex        =   24
         Text            =   "0"
         Top             =   2520
         Width           =   495
      End
      Begin VB.CommandButton cmdProInterface 
         Height          =   495
         Index           =   1
         Left            =   360
         Picture         =   "frmGuriWin.frx":8B50
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   23
         Top             =   600
         Width           =   735
      End
      Begin VB.CommandButton cmdProInterface 
         Height          =   495
         Index           =   2
         Left            =   1080
         Picture         =   "frmGuriWin.frx":8E5A
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   22
         Top             =   600
         Width           =   735
      End
      Begin VB.CommandButton cmdProInterface 
         Height          =   375
         Index           =   3
         Left            =   360
         Picture         =   "frmGuriWin.frx":9164
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   21
         Top             =   1080
         Width           =   1455
      End
      Begin VB.CommandButton cmdProInterface 
         Height          =   375
         Index           =   0
         Left            =   360
         Picture         =   "frmGuriWin.frx":946E
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   20
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label lblLineNumber 
         Alignment       =   2  '中央揃え
         BackStyle       =   0  '透明
         Caption         =   "LineNo.  0 / 100"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   9
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   39
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblTo 
         Alignment       =   2  '中央揃え
         BackStyle       =   0  '透明
         Caption         =   "●"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   9
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   0
         TabIndex        =   34
         Top             =   2880
         Width           =   375
      End
      Begin VB.Label lblFrom 
         Alignment       =   2  '中央揃え
         BackStyle       =   0  '透明
         Caption         =   "●"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   9
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   0
         TabIndex        =   33
         Top             =   2520
         Width           =   375
      End
      Begin VB.Label lblPos 
         Alignment       =   2  '中央揃え
         BackStyle       =   0  '透明
         Caption         =   "Z"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   9
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   2
         Left            =   1320
         TabIndex        =   32
         Top             =   2160
         Width           =   375
      End
      Begin VB.Label lblPos 
         Alignment       =   2  '中央揃え
         BackStyle       =   0  '透明
         Caption         =   "Y"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   9
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   840
         TabIndex        =   31
         Top             =   2160
         Width           =   375
      End
      Begin VB.Label lblPos 
         Alignment       =   2  '中央揃え
         BackStyle       =   0  '透明
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   9
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   360
         TabIndex        =   30
         Top             =   2160
         Width           =   375
      End
   End
   Begin VB.Timer WatchExplanation 
      Left            =   3840
      Top             =   840
   End
   Begin VB.Timer AutosaveTimer 
      Interval        =   60000
      Left            =   3360
      Top             =   840
   End
   Begin VB.PictureBox picTopVIew 
      Height          =   1095
      Left            =   1440
      ScaleHeight     =   1035
      ScaleWidth      =   1275
      TabIndex        =   18
      Top             =   840
      Width           =   1335
   End
   Begin VB.PictureBox picSideView 
      Height          =   1095
      Left            =   2760
      ScaleHeight     =   1035
      ScaleWidth      =   1275
      TabIndex        =   17
      Top             =   1920
      Width           =   1335
   End
   Begin VB.PictureBox picFrontView 
      Height          =   1095
      Left            =   1440
      ScaleHeight     =   1035
      ScaleWidth      =   1275
      TabIndex        =   16
      Top             =   1920
      Width           =   1335
   End
   Begin VB.Timer TurningTimer 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   2880
      Top             =   840
   End
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   840
      Top             =   2400
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox picSecondaryTools 
      Height          =   5295
      Left            =   4320
      Picture         =   "frmGuriWin.frx":9778
      ScaleHeight     =   5235
      ScaleWidth      =   2235
      TabIndex        =   1
      Top             =   840
      Width           =   2295
      Begin VB.CommandButton cmdToolBox 
         Caption         =   ">"
         Height          =   495
         Index           =   18
         Left            =   1560
         Picture         =   "frmGuriWin.frx":110E0
         TabIndex        =   45
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton cmdToolBox 
         Caption         =   ">"
         Height          =   495
         Index           =   17
         Left            =   1560
         Picture         =   "frmGuriWin.frx":11FAA
         TabIndex        =   44
         Top             =   2280
         Width           =   255
      End
      Begin VB.CommandButton cmdToolBox 
         Caption         =   ">"
         Height          =   495
         Index           =   16
         Left            =   1560
         Picture         =   "frmGuriWin.frx":12E74
         TabIndex        =   43
         Top             =   1800
         Width           =   255
      End
      Begin VB.CommandButton cmdToolBox 
         Caption         =   "<"
         Height          =   495
         Index           =   15
         Left            =   240
         Picture         =   "frmGuriWin.frx":13D3E
         TabIndex        =   42
         Top             =   2760
         Width           =   255
      End
      Begin VB.CommandButton cmdToolBox 
         Caption         =   "<"
         Height          =   495
         Index           =   14
         Left            =   240
         Picture         =   "frmGuriWin.frx":14C08
         TabIndex        =   41
         Top             =   2280
         Width           =   255
      End
      Begin VB.CommandButton cmdToolBox 
         Caption         =   "<"
         Height          =   495
         Index           =   13
         Left            =   240
         Picture         =   "frmGuriWin.frx":15AD2
         TabIndex        =   40
         Top             =   1800
         Width           =   255
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   615
         Index           =   10
         Left            =   360
         Picture         =   "frmGuriWin.frx":1699C
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   15
         Top             =   3240
         Width           =   1335
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   615
         Index           =   0
         Left            =   360
         Picture         =   "frmGuriWin.frx":17026
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   13
         Top             =   120
         Width           =   1455
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   735
         Index           =   12
         Left            =   360
         Picture         =   "frmGuriWin.frx":17330
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   12
         Top             =   4320
         Width           =   1335
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   11
         Left            =   360
         Picture         =   "frmGuriWin.frx":17BFA
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   11
         Top             =   3840
         Width           =   1335
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   9
         Left            =   960
         Picture         =   "frmGuriWin.frx":184C4
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   10
         Top             =   2760
         Width           =   615
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   8
         Left            =   480
         Picture         =   "frmGuriWin.frx":187CE
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   9
         Top             =   2760
         Width           =   495
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   7
         Left            =   960
         Picture         =   "frmGuriWin.frx":18AD8
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   8
         Top             =   2280
         Width           =   615
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   6
         Left            =   480
         Picture         =   "frmGuriWin.frx":18DE2
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   7
         Top             =   2280
         Width           =   495
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   5
         Left            =   960
         Picture         =   "frmGuriWin.frx":190EC
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   6
         Top             =   1800
         Width           =   615
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   4
         Left            =   480
         Picture         =   "frmGuriWin.frx":193F6
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   5
         Top             =   1800
         Width           =   495
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   615
         Index           =   3
         Left            =   360
         Picture         =   "frmGuriWin.frx":19700
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   4
         Top             =   1200
         Width           =   1455
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   2
         Left            =   1080
         Picture         =   "frmGuriWin.frx":19A0A
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   3
         Top             =   720
         Width           =   735
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   1
         Left            =   360
         Picture         =   "frmGuriWin.frx":19D14
         Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
         TabIndex        =   2
         Top             =   720
         Width           =   735
      End
   End
   Begin ComctlLib.StatusBar sbrCurrentCondition 
      Align           =   2  '下揃え
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   7440
      Width           =   9180
      _ExtentX        =   16193
      _ExtentY        =   873
      SimpleText      =   ""
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   2
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Text            =   "説明："
            TextSave        =   "説明："
            Key             =   "sbrExplanation"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel2 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Text            =   "視点の角度："
            TextSave        =   "視点の角度："
            Key             =   "sbrAngle"
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin ComctlLib.ImageList imglstToolBar 
      Left            =   240
      Top             =   2400
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   14
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1A01E
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1A338
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1A652
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1A96C
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1AC86
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1AFA0
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1B2BA
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1B5D4
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1B8EE
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1BC08
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1BF22
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1C23C
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1C556
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmGuriWin.frx":1C870
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuFile 
      Caption         =   "ファイル(&F)"
      Begin VB.Menu mnuFileLoad 
         Caption         =   "読込み(&L)"
         Shortcut        =   ^L
      End
      Begin VB.Menu mnuFileSave 
         Caption         =   "保存"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFileInfo 
         Caption         =   "データファイル情報"
      End
      Begin VB.Menu mnuFileDataFolder 
         Caption         =   "現在のデータ保存先フォルダ"
      End
      Begin VB.Menu mnuFileCopyright 
         Caption         =   "著作者情報編集"
      End
      Begin VB.Menu mnuFileHyphenForOthers 
         Caption         =   "-"
      End
      Begin VB.Menu mnuViewThumbnail 
         Caption         =   "サムネイル表示"
      End
      Begin VB.Menu mnuFileParaParaAnime 
         Caption         =   "ぱらぱらアニメーション作成"
      End
      Begin VB.Menu mnuFileHyphenForPrint 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFilePrint 
         Caption         =   "印刷"
      End
      Begin VB.Menu mnuFileHyphenForThumbNail 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   0
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   2
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   3
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   4
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSep 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFin 
         Caption         =   "終了"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "編集(&E)"
      Begin VB.Menu mnuDraw 
         Caption         =   "作図"
      End
      Begin VB.Menu mnuNewFig 
         Caption         =   "新規図面"
      End
      Begin VB.Menu hifun4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCopy 
         Caption         =   "コピー"
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "表示(&V)"
      Begin VB.Menu mnuViewMagnify 
         Caption         =   "拡大"
      End
      Begin VB.Menu mnuViewReduce 
         Caption         =   "縮小"
      End
      Begin VB.Menu mnuViewHyphen 
         Caption         =   "-"
      End
      Begin VB.Menu mnuContinuousTurn 
         Caption         =   "連続回転表示"
      End
      Begin VB.Menu mnuSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFrontView 
         Caption         =   "正面図"
      End
      Begin VB.Menu mnuTopView 
         Caption         =   "平面図"
      End
      Begin VB.Menu mnuSideView 
         Caption         =   "右側面図"
      End
      Begin VB.Menu mnuEqualAngleView 
         Caption         =   "等角図"
      End
      Begin VB.Menu haifun 
         Caption         =   "-"
      End
      Begin VB.Menu mnuThirdAngleProjectionMethod 
         Caption         =   "三角法表示"
      End
   End
   Begin VB.Menu mnuOption 
      Caption         =   "オプション(&O)"
      Begin VB.Menu mnuDifficulty 
         Caption         =   "操作の難易度"
         Begin VB.Menu mnuBeginner 
            Caption         =   "初級　Step20mm　MAX 100mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuMidClass 
            Caption         =   "中級　Step10mm　MAX 200mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuSenior 
            Caption         =   "上級　Step10mm　MAX1000mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuSpecial 
            Caption         =   "特級　Step 5mm　MAX1000mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuSuperSpecial 
            Caption         =   "超特級　Step 1mm　Max1000mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuGuriRobo5mm 
            Caption         =   "グリロボ5mm（Xmax=68mm,Ymax=78mm,Z=0,Step=5mm)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuGuriRobo1mm 
            Caption         =   "グリロボ1mm（Xmax=68mm,Ymax=78mm,Z=0,Step=1mm)"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu hifun2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuWiindowSize 
         Caption         =   "画面の大きさ"
         Begin VB.Menu mnuVAIOC1Size 
            Caption         =   "モバイル用(800×400)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuNormalSize 
            Caption         =   "ノーマル(640×480)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuExpansion1 
            Caption         =   "拡張１(800×600)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuExpansion2 
            Caption         =   "拡張２(1024×768)"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu mnuHifun2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuOptionProInterface 
         Caption         =   "詳細入力モード"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuDrawEnabled 
         Caption         =   "作図を許可"
         Checked         =   -1  'True
         Enabled         =   0   'False
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSaveEnabled 
         Caption         =   "データの保存を許可"
         Checked         =   -1  'True
         Enabled         =   0   'False
         Visible         =   0   'False
      End
      Begin VB.Menu mnuHiFun 
         Caption         =   "-"
      End
      Begin VB.Menu mnuDataPathFixed 
         Caption         =   "データの保存場所固定"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuOptionHifun3 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuOptionDataVersion200 
         Caption         =   "データ形式の変更（Ver200を利用）"
         Checked         =   -1  'True
         Enabled         =   0   'False
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "ヘルプ(&H)"
      Begin VB.Menu mnuHelpCall 
         Caption         =   "ヘルプ"
      End
      Begin VB.Menu mnuShowVersion 
         Caption         =   "バージョン情報"
      End
   End
End
Attribute VB_Name = "frmGuriWin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'==========================================================
'Name:        frmGuriWin アプリケーションの顔
'Author:      平田 敦(a_hirata@siscom.or.jp)
'CreateDate:  2003/01/25
'ChangeDate:
'Revision:

'====================================================================
'
'                   frmGuriWin.frm
'           立体グリグリの顔、メインフォームです。
'
'====================================================================
'
'
'   ソースファイルの目次
'       ・フォーム内に書き込めるコードは、すべて、このフォームの形状
'         と部品の死活を制御するためのものに限ります。
'       ・ほぼすべてのイベントコードをコントローラオブジェクトに次の
'         ように委譲します。
'         g_GuriController.SetCommand (コマンド文字列)
'         これは、将来コマンドのUndo、Redoを実装するための布石です。
'
'       ・フォームが取りえる場合をリストアップ
'           フォームの大きさ（"800x400","600x480","800x600","1024x768")ごとに
'
'               通常モード
'                   通常で通常
'                       簡易入力モード      無効化するもの（ＮＥＷ、作図ポインタ操作ボタン）
'                       詳細入力モード      無効化するもの（ＮＥＷ、作図ポインタ操作ボタン）
'                   通常で第三角法作画中
'                       簡易入力モード      無効化するもの（ＮＥＷ、作図ポインタ操作ボタン、平面図等固定視点ボタン）
'                       詳細入力モード      無効化するもの（ＮＥＷ、作図ポインタ操作ボタン、平面図等固定視点ボタン）
'                   通常で第三角法
'                       簡易入力モード      無効化するもの（ＮＥＷ、作図ポインタ操作ボタン）
'                       詳細入力モード      無効化するもの（ＮＥＷ、作図ポインタ操作ボタン）
'                   通常モードで連続回転中
'                       簡易入力モード      無効化するもの（ＮＥＷ、作図ポインタ操作ボタン，平面図等固定視点ボタン）
'                       詳細入力モード      無効化するもの（ＮＥＷ、作図ポインタ操作ボタン，平面図等固定視点ボタン）
'               作図モード
'                   作図で通常
'                       簡易入力モード
'                       詳細入力モード
'                   作図で第三角法
'                       簡易入力モード
'                       詳細入力モード
'                   作図モードで連続回転
'                       簡易入力モード
'                       詳細入力モード
'
'                       三角法用ピクチャボックスの死活は、三角法しょりで、きちんと始末をつけるべき。
'
'================================================
' オブジェクト、変数の宣言
'================================================
'------------------------------------------------
' Global
'------------------------------------------------

'------------------------------------------------
' Private
'------------------------------------------------

'画面のサイズをあらわす文字列を格納　”横×縦”
Private m_FormSizeString As String
'設定可能なサイズはつぎの４種類で、それ以外は無視されて800x400にします。
'                            "800x400"
'                            "640x480"
'                            "800x600"
'                            "1024x768"

'画面のサイズを格納。単位はピクセル
Private m_FormWidth As Integer
Private m_FormHeight As Integer









'------------------------------------------------
' フォームのコンストラクタ　かな
'------------------------------------------------

'------------------------------------------------
Private Sub Form_Load()
'目的：フォームがロードされるときにすべきこと
'------------------------------------------------
    '三角法表示用ピクチャボックスを非表示に
    Me.picFrontView.Visible = False
    Me.picSideView.Visible = False
    Me.picTopVIew.Visible = False
    
    '誤動作防止のためにユーザにツールバーのダブル
    'クリックによるツールバーの変更を不許可
    g_frmGuriWin.tlbToolBar.AllowCustomize = False
    
    'キー入力を許可
    g_frmGuriWin.KeyPreview = True
    
End Sub



'================================================
' Public Methods
'================================================

'------------------------------------------------
Public Sub SetCopyrightInfo(Author As String, Reference As String)
'目的： 著作権情報をセット
'------------------------------------------------
    Me.lblAuthorString.Caption = Author
    Me.lblReferenceString.Caption = Reference
End Sub

'------------------------------------------------
Public Sub SetViewMode()
'目的： VIEW_MODE時の必要を満たすように、各コント
'       ロールの死活を設定
'------------------------------------------------
    '------------------------
    '★ツールバー関連
    '新規図面ボタン無効
    tlbToolBar.Buttons(7).Enabled = False
    '------------------------
    '★メニュー関連
    '新規図面メニュー無効化
    mnuNewFig.Enabled = False
    '難易度メニュー無効化
    With Me
      .mnuBeginner.Enabled = False
      .mnuMidClass.Enabled = False
      .mnuSenior.Enabled = False
      .mnuSpecial.Enabled = False
      .mnuSuperSpecial.Enabled = False
      .mnuGuriRobo5mm.Enabled = False
      .mnuGuriRobo1mm.Enabled = False
    End With
    '------------------------
    '★ツールボックス用ピクチャボックス関連
    'ツールボックスの作図関連ボタン無効化
    Dim i As Integer
    For i = 4 To 18
        cmdToolBox(i).Enabled = False
    Next i
    'ProInterfaceのコントロール類を無効化
    For i = 4 To 6
        cmdProInterface(i).Enabled = False
    Next i
    For i = 0 To 5
        txtPos(i).Enabled = False
    Next i
    vscrLineNumber.Enabled = False
End Sub

'------------------------------------------------
Public Sub SetDrawMode()
'目的： DRAW_MODE時の必要を満たすように、各コント
'       ロールの死活を設定
'------------------------------------------------
    '------------------------
    '★ツールバー関連
    tlbToolBar.Buttons(7).Enabled = True   '新規図面ボタン有効
    '------------------------
    '★メニュー関連
    '新規図面メニュー有効化
    mnuNewFig.Enabled = True
    '難易度メニュー有効化
    With Me
      .mnuBeginner.Enabled = True
      .mnuMidClass.Enabled = True
      .mnuSenior.Enabled = True
      .mnuSpecial.Enabled = True
      .mnuSuperSpecial.Enabled = True
      .mnuGuriRobo1mm.Enabled = True
      .mnuGuriRobo5mm.Enabled = True
    End With
    '------------------------
    '★ツールボックス用コントロール関連
    'ツールボックスの作図関連ボタン有効化
    Dim i As Integer
    For i = 4 To 18
        cmdToolBox(i).Enabled = True
    Next i
    'ProInterface用各種コントロール
    For i = 4 To 6
        cmdProInterface(i).Enabled = True
    Next i
    For i = 0 To 5
        txtPos(i).Enabled = True
    Next i
    vscrLineNumber.Enabled = True
    If g_AppData.ProInterface = True Then
        g_GuriProController.SetCommand ("REFLESH_PRO_INTERFACE")
    End If
End Sub

'------------------------------------------------
Public Sub SetTAPMMode()
'目的：第三角法表示のために、各種コントロールの位
'      置、大きさを調整する。
'------------------------------------------------
    
    g_ctlGuriView.ControlWidth = (Me.ScaleWidth - Me.picSecondaryTools.Width) / 2 * Screen.TwipsPerPixelX    'g_ctlGuriView.Width / 2
    g_ctlGuriView.ControlHeight = (Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height) / 2 * Screen.TwipsPerPixelY   'g_ctlGuriView.Height / 2
    ctlGuriView.ControlScaleWidth = m_FormWidth - Me.picSecondaryTools.Width
    ctlGuriView.ControlScaleHeight = m_FormHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height
    Me.picFrontView.Visible = True
    Me.picSideView.Visible = True
    Me.picTopVIew.Visible = True
    Me.picFrontView.Width = g_ctlGuriView.Width
    Me.picFrontView.Height = g_ctlGuriView.Height
    Me.picTopVIew.Width = g_ctlGuriView.Width
    Me.picTopVIew.Height = g_ctlGuriView.Height
    Me.picSideView.Width = g_ctlGuriView.Width
    Me.picSideView.Height = g_ctlGuriView.Height
    
    g_ctlGuriView.Left = g_ctlGuriView.Width
    
    Me.picTopVIew.Left = 0
    Me.picTopVIew.Top = g_ctlGuriView.Top
    Me.picFrontView.Left = 0
    Me.picFrontView.Top = g_ctlGuriView.Top + g_ctlGuriView.Height
    Me.picSideView.Left = g_ctlGuriView.Left
    Me.picSideView.Top = Me.picFrontView.Top
    ctlGuriView.Draw
End Sub

'------------------------------------------------
Public Sub ResetTAPMMode()
'目的：第三角法表示を解除し、通常の状態に戻す
'------------------------------------------------
    g_ctlGuriView.Left = 0
    g_ctlGuriView.Top = Me.tlbToolBar.Height
    g_ctlGuriView.ControlWidth = (Me.ScaleWidth - Me.picSecondaryTools.Width) * Screen.TwipsPerPixelX     'g_ctlGuriView.Width / 2
    g_ctlGuriView.ControlHeight = (Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height) * Screen.TwipsPerPixelY    'g_ctlGuriView.Height / 2
    ctlGuriView.ControlScaleWidth = m_FormWidth - Me.picSecondaryTools.Width
    ctlGuriView.ControlScaleHeight = m_FormHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height
    Me.picFrontView.Visible = False
    Me.picSideView.Visible = False
    Me.picTopVIew.Visible = False
    Me.picFrontView = LoadPicture()
    Me.picSideView = LoadPicture()
    Me.picTopVIew = LoadPicture()
    ctlGuriView.Draw
End Sub

'------------------------------------------------
Public Function GetFormSize() As String
'目的：現在のフォームサイズを返す
'------------------------------------------------
    GetFormSize = m_FormSizeString
End Function
'------------------------------------------------
Public Sub SetFormSize(ByVal Size As String)
'目的：　フォームのサイズを指定の大きさに変更する
'引数：　size　画面のサイズ　横×縦
'                            "800x400"
'                            "640x480"
'                            "800x600"
'                            "1024x768"
'返値：　なし
'------------------------------------------------
    m_FormSizeString = Size
    Me.ScaleMode = vbPixels               'スケールモードはピクセル単位
    Me.mnuVAIOC1Size.Checked = False
    Me.mnuNormalSize.Checked = False
    Me.mnuExpansion1.Checked = False
    Me.mnuExpansion2.Checked = False
    Select Case Size
        Case "800x400"
            m_FormWidth = 800
            m_FormHeight = 400
            m_FormSizeString = Size
            Me.mnuVAIOC1Size.Checked = True
        Case "640x480"
            m_FormWidth = 640
            m_FormHeight = 480
            m_FormSizeString = Size
            Me.mnuNormalSize.Checked = True
        Case "800x600"
            m_FormWidth = 800
            m_FormHeight = 600
            m_FormSizeString = Size
            Me.mnuExpansion1.Checked = True
        Case "1024x768"
            m_FormWidth = 1024
            m_FormHeight = 768
            m_FormSizeString = Size
            Me.mnuExpansion2.Checked = True
        Case Else
            m_FormWidth = 800
            m_FormHeight = 400
            m_FormSizeString = "800x400"
            Me.mnuVAIOC1Size.Checked = True
    End Select
    'frmGuriWinのサイズ設定
    Me.Width = m_FormWidth * Screen.TwipsPerPixelX
    Me.Height = m_FormHeight * Screen.TwipsPerPixelY
    'frmGuriWinの位置を調整
    Me.Left = (Screen.Width - Me.Width) / 2
    Me.Top = (Screen.Height - Me.Height) / 2
    'sbrCurrentConditionの配置
    Call SetsbrCurrentCondition
    'picSecondaryToolBosの配置
    Call SetSecondaryToolButtons
    'fraCopyrightの配置
    If g_AppData.FormSize = "640x480" Or g_AppData.FormSize = "800x600" Or g_AppData.FormSize = "1024x768" Then
        Me.fraCopyright.Visible = True
        Call SetCopyrightFrame
    Else
        Me.fraCopyright.Visible = False
    End If
    'picProInterfaceの配置
    Call SetProInterface
    'ctlGuriViewの配置
    ctlGuriView.ControlWidth = (Me.ScaleWidth - Me.picSecondaryTools.Width) * Screen.TwipsPerPixelX
    ctlGuriView.ControlHeight = (Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height) * Screen.TwipsPerPixelY
    ctlGuriView.Left = 0
    ctlGuriView.Top = Me.tlbToolBar.Height
    ctlGuriView.ControlScaleWidth = m_FormWidth - Me.picSecondaryTools.Width
    ctlGuriView.ControlScaleHeight = m_FormHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height
    'ぐりのDataをViewに反映
    ctlGuriView.Draw
    'フォームの表示をリフレッシュ
    Me.Refresh
End Sub


'------------------------------------------------
'目的：インターフェイスを切り替える。
Public Sub ChangeToProInterface()
    With Me
        .picSecondaryTools.Visible = False
        .picProInterface.Visible = True
        .picProInterface.SetFocus   'これが大切だった。
    End With
End Sub

Public Sub ChangeToEasyInterface()
    With Me
        .picSecondaryTools.Visible = True
        .picProInterface.Visible = False
        .picSecondaryTools.SetFocus 'とっても大切だった。
    End With
End Sub



'------------------------------------------------
'目的：各画像をクリップボードへ送る。
'　　　このとき送られる画像は、GuriViewコントロー
'      ルに表示されている画像。
'------------------------------------------------
Public Sub ClipboardToFrontView()
    Me.picFrontView = Clipboard.GetData()
End Sub

Public Sub ClipboardToTopView()
    Me.picTopVIew = Clipboard.GetData
End Sub

Public Sub ClipboardToSideView()
    Me.picSideView = Clipboard.GetData
End Sub


'------------------------------------------------
Public Sub SetEntireFormToClipboard()
'目的：アプリケーション全体の画像をクリップボードへ送り込む。
'------------------------------------------------
    Dim keyevents As CKeyEventsForClipboardHandling
    Set keyevents = New CKeyEventsForClipboardHandling
    keyevents.CopyEntireFormToClipboard
End Sub


'------------------------------------------------
Public Sub SetDifficulty(ByVal Difficulty As String)
'目的：作図難易度の設定
'------------------------------------------------
    'メニューの状態設定
    Select Case Difficulty
        Case "DIFFICULTY_BEGINER"
            setDifficultiesCheck True, False, False, False, False, False, False
        Case "DIFFICULTY_MIDIUM"
            setDifficultiesCheck False, True, False, False, False, False, False
        Case "DIFFICULTY_SENIOR"
            setDifficultiesCheck False, False, True, False, False, False, False
        Case "DIFFICULTY_SPECIAL"
            setDifficultiesCheck False, False, False, True, False, False, False
        Case "DIFFICULTY_SUPER_SPECIAL"
            setDifficultiesCheck False, False, False, False, True, False, False
        Case "DIFFICULTY_GURIROBO5mm"
            setDifficultiesCheck False, False, False, False, False, True, False
        Case "DIFFICULTY_GURIROBO1mm"
            setDifficultiesCheck False, False, False, False, False, False, True
        Case Else
            setDifficultiesCheck True, False, False, False, False, False, False
        End Select
    '状態変化をコントローラーに通知
    g_GuriController.SetCommand (Difficulty)
End Sub







'================================================
' Private Methods
'================================================


'------------------------------------------------
Private Sub SetsbrCurrentCondition()
'目的：下部のステータスバーの配置
'引数：なし
'返値：なし
'------------------------------------------------
    With Me
        .sbrCurrentCondition.Height = 20
        .sbrCurrentCondition.Top = .ScaleHeight - .sbrCurrentCondition.Height
        .sbrCurrentCondition.Panels(1).Width = Me.ScaleWidth - .picSecondaryTools.Width
        .sbrCurrentCondition.Panels(2).Width = .picSecondaryTools.Width
    End With
End Sub

'------------------------------------------------
Private Sub SetCopyrightFrame()
'目的説明：     著作権情報フレームの配置
'入力引数：     なし
'戻り値：       なし
'------------------------------------------------
'
'
    
    With Me.fraCopyright
        .Top = Me.picSecondaryTools.Top + Me.picSecondaryTools.Height
        .Left = Me.picSecondaryTools.Left
        .Width = Me.picSecondaryTools.Width
        .Height = Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height - Me.picSecondaryTools.Height
    End With
    
    Dim CIW, CIH As Integer '著作権情報フレームの幅・高さ
        CIW = Me.fraCopyright.Width * Screen.TwipsPerPixelX
         CIH = Me.fraCopyright.Height * Screen.TwipsPerPixelY
    Dim MarginLeft As Integer
        MarginLeft = CIW / 10
    Dim MarginLeftTab As Integer
        MarginLeftTab = CIW / 20
    Dim MarginTop As Integer
        MarginTop = CIH / 10
    Dim MARGIN As Integer
        MARGIN = CIH / 20
    Dim MarginBottom As Integer
        MarginBottom = CIH / 10
    Dim LabelHeight As Integer
        LabelHeight = 20 * Screen.TwipsPerPixelY
    
    
    With Me.lblAuthor
        .Height = LabelHeight
        .Top = MarginTop
        .Left = MarginLeft
    End With
    With Me.lblAuthorString
        .Height = LabelHeight
        .Top = MarginTop + LabelHeight + MARGIN
        .Left = MarginLeft + MarginLeftTab
        .Width = CIW - .Left - MarginLeft
    End With
    If m_FormSizeString = "640x480" Then
        Dim AuthorInfoOffSet As Integer: AuthorInfoOffSet = 1.8
        With Me.lblAuthor
            .Height = LabelHeight
            .Top = MarginTop * AuthorInfoOffSet
            .Left = MarginLeft
        End With
        With Me.lblAuthorString
            .Height = LabelHeight
            .Top = MarginTop * AuthorInfoOffSet + LabelHeight + MARGIN
            .Left = MarginLeft + MarginLeftTab
            .Width = CIW - .Left - MarginLeft
        End With
        Me.lblReference.Visible = False
        Me.lblReferenceString.Visible = False
    Else
        Me.lblReference.Visible = True
        Me.lblReferenceString.Visible = True
        With Me.lblReference
            .Height = LabelHeight
            .Top = Me.lblAuthorString.Top + Me.lblAuthorString.Height + MARGIN
            .Left = Me.lblAuthor.Left
        End With
        With Me.lblReferenceString
            .Left = Me.lblAuthorString.Left
            .Top = Me.lblReference.Top + LabelHeight + MARGIN
            .Height = CIH - .Top - MarginBottom
            .Width = Me.lblAuthorString.Width
        End With
    End If
End Sub

'------------------------------------------------
Private Sub SetSecondaryToolButtons()
'目的説明：     作図用ツールボックスのボタンの配置
'入力引数：     なし
'戻り値：       なし
'------------------------------------------------
'うーん、特にここはちまちまやらないといけないのです。
'あんまりこの作業は好きではないが、やらないことには進まない。
'消しゴムのデザインはまあまあ気に入ったけど、ＯＫのデザインがすかん。
'

    'picSecondaryToolBoxの大きさと位置
    Dim STBW As Integer, STBH As Integer, STBL As Integer, STBT As Integer
    STBW = 150: STBH = Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height
    If STBH > 300 Then STBH = 300   'ツールボックスの大きさを、最大でも５００に制限
    STBL = Me.ScaleWidth - STBW: STBT = Me.tlbToolBar.Height
    SetControlSizeAndPos Me.picSecondaryTools, STBW, STBH, STBL, STBT

    '次は中身
    'ボタンは９段に分かれている。
    '上下のマージン二つに加え、二つののマージンを設ける
    Dim MarginHeight As Integer
    Dim ButtonHeight As Integer
    Dim ButtonWidth As Integer
    Dim ButtonLeft As Integer
    With Me
        'ボタンの高さは、SecondaryToolBoxの高さを１０等分したものとする。
        'ボタンの幅は、SecondaryToolBoxの幅の７０％とする。
        '上下、ボタン間のマージンは、１０分の１の余裕を４等分したものを用いる。
        .picSecondaryTools.ScaleMode = vbPixels
        ButtonHeight = STBH / 10
        ButtonWidth = STBW * 0.7
        MarginHeight = ButtonHeight / 4
        ButtonLeft = .picSecondaryTools.Width * 0.15
        '＜上のマージン＞
        '矢印ボタン
        Call SetControlSizeAndPos(.cmdToolBox(0), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight)
        Call SetControlSizeAndPos(.cmdToolBox(1), ButtonWidth / 2, ButtonHeight, ButtonLeft, MarginHeight + ButtonHeight)
        Call SetControlSizeAndPos(.cmdToolBox(2), ButtonWidth / 2, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight + ButtonHeight)
        Call SetControlSizeAndPos(.cmdToolBox(3), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight + ButtonHeight * 2)
        '＜マージン＞
        'Ｘ，Ｙ，Ｚボタン
        Call SetControlSizeAndPos(.cmdToolBox(4), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 3)
        Call SetControlSizeAndPos(.cmdToolBox(5), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight * 2 + ButtonHeight * 3)
        Call SetControlSizeAndPos(.cmdToolBox(6), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.cmdToolBox(7), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.cmdToolBox(8), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 5)
        Call SetControlSizeAndPos(.cmdToolBox(9), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight * 2 + ButtonHeight * 5)
        '倍速ボタン
        Call SetControlSizeAndPos(.cmdToolBox(13), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 3)
        Call SetControlSizeAndPos(.cmdToolBox(14), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.cmdToolBox(15), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 5)
        Call SetControlSizeAndPos(.cmdToolBox(16), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2 + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 3)
        Call SetControlSizeAndPos(.cmdToolBox(17), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2 + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.cmdToolBox(18), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2 + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 5)
        '＜マージン＞
        '原点復帰ボタン
        Call SetControlSizeAndPos(.cmdToolBox(10), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 6)
        '削除ボタン
        Call SetControlSizeAndPos(.cmdToolBox(11), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 7)
        '確定ボタン
        Call SetControlSizeAndPos(.cmdToolBox(12), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 8)
        '＜下のマージン＞
    

    End With
End Sub
'************************************************

'------------------------------------------------
Private Sub SetProInterface()
'目的：プロフェッショナルインターフェイスの配置
'------------------------------------------------
    'picProInterfaceの大きさと位置
    Dim PIW As Integer, PIH As Integer, PIL As Integer, PIT As Integer
    PIW = 150: PIH = Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height
    If PIH > 300 Then PIH = 300 'インターフェイスの大きさを最大でも５００に制限
    PIL = Me.ScaleWidth - PIW: PIT = Me.tlbToolBar.Height
    SetControlSizeAndPos Me.picProInterface, PIW, PIH, PIL, PIT

    '上下のマージン二つに加え、二つののマージンを設ける
    Dim MarginHeight As Integer
    Dim ButtonHeight As Integer
    Dim ButtonWidth As Integer
    Dim ButtonLeft As Integer
    With Me
        'ボタンの高さは、ProInterfaceの高さを12等分したものとする。
        'ボタンの幅は、ProInterfaceの幅の７０％とする。
        '上下、ボタン間のマージンは、１０分の１の余裕を４等分したものを用いる。
        .picProInterface.ScaleMode = vbPixels
        ButtonHeight = PIH / 11
        ButtonWidth = PIW * 0.7
        MarginHeight = ButtonHeight / 4
        ButtonLeft = PIW * 0.15
        '＜上のマージン＞
        '矢印ボタン
        Call SetControlSizeAndPos(.cmdProInterface(0), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight)
        Call SetControlSizeAndPos(.cmdProInterface(1), ButtonWidth / 2, ButtonHeight, ButtonLeft, MarginHeight + ButtonHeight)
        Call SetControlSizeAndPos(.cmdProInterface(2), ButtonWidth / 2, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight + ButtonHeight)
        Call SetControlSizeAndPos(.cmdProInterface(3), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight + ButtonHeight * 2)
        '＜マージン＞
        '<LineNumber>
        Call SetControlSizeAndPos(.lblLineNumber, ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 3)
        '＜マージン＞
        '<From,To>
        Call SetControlSizeAndPos(.lblFrom, ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 5)
        Call SetControlSizeAndPos(.lblTo, ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 6)
        '<X,Y,Z Namelable>
        Call SetControlSizeAndPos(.lblPos(0), ButtonWidth * 2 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.lblPos(1), ButtonWidth * 2 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.lblPos(2), ButtonWidth * 2 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 7 / 10, MarginHeight * 2 + ButtonHeight * 4)
        '<Positions>
        Call SetControlSizeAndPos(.txtPos(0), ButtonWidth * 3 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 5)
        Call SetControlSizeAndPos(.txtPos(2), ButtonWidth * 3 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 5)
        Call SetControlSizeAndPos(.txtPos(4), ButtonWidth * 3 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 7 / 10, MarginHeight * 2 + ButtonHeight * 5)
        
        Call SetControlSizeAndPos(.txtPos(1), ButtonWidth * 3 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 6)
        Call SetControlSizeAndPos(.txtPos(3), ButtonWidth * 3 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 6)
        Call SetControlSizeAndPos(.txtPos(5), ButtonWidth * 3 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 7 / 10, MarginHeight * 2 + ButtonHeight * 6)
        '<ScrollBar>
        Call SetControlSizeAndPos(.vscrLineNumber, ButtonWidth * 3 / 20, ButtonHeight * 2, ButtonLeft + ButtonWidth, MarginHeight * 2 + ButtonHeight * 5)
        '＜マージン＞
        '<CommandButtons>
        Call SetControlSizeAndPos(.cmdProInterface(4), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 7)
        Call SetControlSizeAndPos(.cmdProInterface(5), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 8)
        Call SetControlSizeAndPos(.cmdProInterface(6), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 9)
        
        'NewLineボタンはもしかしたら不要かもしれない。見えないようにしておこう。
        .cmdProInterface(6).Visible = False
        
        
        '<VScroll Bar>
        g_GuriProController.SetCommand ("SETUP_VSCROLL_BAR")
        g_GuriProController.SetCommand ("SETUP_LINE_NUMBER_LABEL")
        
'        '＜下のマージン＞
        
    End With

End Sub









'==========================================================
'
'           メニューバーから呼ばれるサブルーチン
'
'==========================================================
'
'************************************************
'               ファイルメニュー
'************************************************

'----------------------------
Private Sub mnuFileLoad_Click()
'目的説明：     図形データをロードする
'----------------------------
    g_GuriController.SetCommand ("LOAD")
End Sub


'----------------------------
Private Sub mnuFileSave_click()
'目的説明：     図形データをセーブする
'----------------------------
    g_GuriController.SetCommand ("SAVE")
End Sub

'----------------------------
Private Sub mnuFileDataFolder_Click()
'目的説明：     現在のデータ保存先を表示する
    g_GuriController.SetCommand ("SHOW_CURRENT_DATAPATH")
End Sub



'----------------------------
Private Sub mnuFileCopyright_Click()
'目的説明：     著作権情報を編集するダイアログを表示する
    g_GuriController.SetCommand ("SHOW_COPYRIGHT_EDIT_DIALOG")


End Sub





''------------------------------------------------
'Private Sub mnuOptionDataVersion200_Click()
''目的：データファイルの形式を変更する
''------------------------------------------------
'    g_GuriController.SetCommand ("CHANGE_DATAFILE_VERSION")
'End Sub

'------------------------------------------------
Private Sub mnuOptionProInterface_Click()
'目的：プロフェッショナルインターフェイスと通常インターフェイスの切り替え
'------------------------------------------------
    If Me.mnuOptionProInterface.Checked = False Then
        Call SetProInterface
        Call ChangeToProInterface
        g_GuriController.SetCommand ("PRO_INTERFACE")
        Me.mnuOptionProInterface.Checked = True
    Else
        g_GuriController.SetCommand ("NORMAL_INTERFACE")
        Call SetSecondaryToolButtons
        Call ChangeToEasyInterface
        Me.mnuOptionProInterface.Checked = False
    End If
    'frmGuriWin.KeyPreview = True
End Sub



'------------------------------------------------
Private Sub mnuViewThumbnail_Click()
'目的説明：     データフォルダの図形をサムネイル表示する
'------------------------------------------------
    g_GuriController.SetCommand ("VIEW_THUMBNAIL")
End Sub

'------------------------------------------------
Private Sub mnuFileInfo_Click()
'目的説明：データファイルに関する情報を表示する
'------------------------------------------------
    g_GuriController.SetCommand ("VIEW_DATA_FILE_INFO")
End Sub

'------------------------------------------------
Private Sub mnuFileParaParaAnime_Click()
'目的：ぱらぱらアニメーション用ビットマップ出力
'------------------------------------------------
    g_GuriController.SetCommand ("PARA_PARA_ANIME")
End Sub


'------------------------------------------------
Private Sub mnuFilePrint_Click()
'目的：印刷コマンド発行
'------------------------------------------------
    'フォーム全体を印刷
    'g_GuriController.SetCommand ("PRINT_ENTIRE_FORM")
    '表示中の画像のみを印刷
    g_GuriController.SetCommand ("PRINT_MONOCHROME_PICTURE")
End Sub


'------------------------------------------------
Private Sub mnuFileRecent_Click(index As Integer)
'目的：最近利用したデータファイルを読み込む
'------------------------------------------------
    g_GuriController.SetCommand ("LOAD_RECENT_" & index)
End Sub

'------------------------------------------------
Private Sub mnuFin_click()
'目的説明：     ソフトウエアの終了
'------------------------------------------------
    g_GuriController.SetCommand ("FIN")
End Sub




'************************************************
'編集メニュー
'************************************************
'------------------------------------------------
Private Sub mnuDraw_click()
'目的説明：     作図モードトグルスイッチ
'------------------------------------------------
    g_GuriController.SetCommand ("CHANGE_MODE")
    Me.mnuDraw.Checked = IIf(g_AppData.Mode = "DRAW_MODE", _
                             True, False)
End Sub

'------------------------------------------------
Private Sub mnuNewFig_Click()
'目的説明:      図形データをクリヤ。画面を白紙にする。
'------------------------------------------------
    g_GuriController.SetCommand ("NEW_FIGURE")
End Sub

'------------------------------------------------

'------------------------------------------------
Private Sub mnuCopy_Click()
'目的説明： モノクロの状態でクリップボードに転送
'------------------------------------------------
    g_GuriController.SetCommand ("MONOCHROME_COPY")
End Sub



'------------------------------------------------
Private Sub mnuColorCopy_Click()
'目的説明:      カラーの状態でクリップボードに転送
'------------------------------------------------
    g_GuriController.SetCommand ("NORMAL_COPY")
End Sub
'------------------------------------------------
Private Sub mnuMonoCopy_Click()
'目的説明:      モノクロの状態でクリップボードに転送
'------------------------------------------------
    g_GuriController.SetCommand ("MONOCHROME_COPY")
End Sub


'************************************************
'表示メニュー
'************************************************

'------------------------------------------------
Private Sub mnuViewMagnify_Click()
'目的：図形をすこし拡大して表示
'------------------------------------------------
    g_GuriController.SetCommand ("MAGNIFY")
End Sub

'------------------------------------------------
Private Sub mnuViewReduce_Click()
'目的：図形を少し縮小して表示
'------------------------------------------------
    g_GuriController.SetCommand ("REDUCE")
End Sub

'------------------------------------------------
Private Sub mnuContinuousTurn_click()
'目的説明：     連続回転。回転方向トグル
'------------------------------------------------
    g_GuriController.SetCommand ("CONTINUOUS_TURN")
End Sub

'------------------------------------------------
'------------------------------------------------
Private Sub mnuFrontView_Click()
'目的説明：     正面図表示
'------------------------------------------------
    g_GuriController.SetCommand ("FRONT_VIEW")
End Sub
'------------------------------------------------
Private Sub mnuTopView_click()
'目的説明：     平面図表示
'------------------------------------------------
    g_GuriController.SetCommand ("TOP_VIEW")
End Sub
'------------------------------------------------
Private Sub mnuSideView_click()
'目的説明：     右側面図表示
'------------------------------------------------
    g_GuriController.SetCommand ("SIDE_VIEW")
End Sub
'------------------------------------------------
Private Sub mnuEqualAngleView_click()
'目的説明：     等角図表示
'------------------------------------------------
    g_GuriController.SetCommand ("EQUAL_ANGLE_VIEW")
End Sub
'
'------------------------------------------------
'------------------------------------------------
Private Sub mnuThirdAngleProjectionMethod_Click()
'目的説明：     第三角法表示
'------------------------------------------------
    g_GuriController.SetCommand ("THIRD_ANGLE_PROJECTION_METHOD")
End Sub

'************************************************
'オプションメニュー
'************************************************
'操作の難易度

    'チェック表示切り替えユーティリティ
    Private Sub setDifficultiesCheck(beg As Boolean, _
                                     mid As Boolean, _
                                     sen As Boolean, _
                                     spe As Boolean, _
                                     sup As Boolean, _
                                     g5mm As Boolean, _
                                     g1mm As Boolean)
        With Me
         .mnuBeginner.Checked = beg
         .mnuMidClass.Checked = mid
         .mnuSenior.Checked = sen
         .mnuSpecial.Checked = spe
         .mnuSuperSpecial.Checked = sup
         .mnuGuriRobo5mm.Checked = g5mm
         .mnuGuriRobo1mm.Checked = g1mm
        End With
    End Sub
                            
    
    
    
    '初級
    Private Sub mnuBeginner_Click()
        setDifficultiesCheck True, False, False, False, False, False, False
        g_GuriController.SetCommand ("DIFFICULTY_BEGINNER")
    End Sub
    '中級
    Private Sub mnuMidClass_Click()
        setDifficultiesCheck False, True, False, False, False, False, False
        g_GuriController.SetCommand ("DIFFICULTY_MIDIUM")
    End Sub
    '上級
    Private Sub mnuSenior_Click()
        setDifficultiesCheck False, False, True, False, False, False, False
        g_GuriController.SetCommand ("DIFFICULTY_SENIOR")
    End Sub
    Private Sub mnuSpecial_Click()
        setDifficultiesCheck False, False, False, True, False, False, False
        g_GuriController.SetCommand ("DIFFICULTY_SPECIAL")
    
    End Sub
    Private Sub mnuSuperSpecial_Click()
        setDifficultiesCheck False, False, False, False, True, False, False
        g_GuriController.SetCommand ("DIFFICULTY_SUPER_SPECIAL")
    End Sub
    Private Sub mnuGuriRobo5mm_Click()
        setDifficultiesCheck False, False, False, False, False, True, False
        g_GuriController.SetCommand ("DIFFICULTY_GURIROBO5mm")
    End Sub
    Private Sub mnuGuriRobo1mm_Click()
        setDifficultiesCheck False, False, False, False, False, False, True
        g_GuriController.SetCommand ("DIFFICULTY_GURIROBO1mm")
    End Sub


'------------------------------------------------
'画面のサイズの設定
    Private Sub mnuVAIOC1Size_Click()
        g_GuriController.SetCommand ("800x400")
    End Sub
    Private Sub mnuNormalSize_Click()
        g_GuriController.SetCommand ("640x480")
    End Sub
    Private Sub mnuExpansion1_Click()
        g_GuriController.SetCommand ("800x600")
    End Sub
    Private Sub mnuExpansion2_Click()
        g_GuriController.SetCommand ("1024x768")
    End Sub

'------------------------------------------------
Private Sub mnuDataPathFixed_Click()
'目的：データパス固定の設定、解除のトグル
'------------------------------------------------
    g_GuriController.SetCommand ("DATA_PATH_FIXED")
End Sub


'
'************************************************
'ヘルプメニュー
'************************************************
'------------------------------------------------
Private Sub mnuHelpCall_Click()
'目的：操作説明表示
'------------------------------------------------
    g_GuriController.SetCommand ("SHOW_HELP")

End Sub
'------------------------------------------------
Private Sub mnuShowVersion_Click()
'目的：バージョン情報表示
'------------------------------------------------
    g_GuriController.SetCommand ("SHOW_VERSION_DIALOG")
End Sub











'==========================================================
'
'       ツールバーから呼ばれるサブルーチン
'
'
'==========================================================
'
'------------------------------------------------
Private Sub tlbToolBar_ButtonClick(ByVal Button As ComctlLib.Button)
'目的：ツールバーから呼ばれる命令の振り分け
'------------------------------------------------
    Select Case Button.Key
        'File Menu
        Case "cmdFigLoad"
            g_GuriController.SetCommand ("LOAD")
        Case "cmdFigSave"
            g_GuriController.SetCommand ("SAVE")
        Case "cmdFin"
            g_GuriController.SetCommand ("FIN")
        'Edit Menu
        Case "cmdDrawFig"
            g_GuriController.SetCommand ("CHANGE_MODE")
        Case "cmdNewFig"
            g_GuriController.SetCommand ("NEW_FIGURE")
        'View Menu
        Case "cmdMagnify"
            g_GuriController.SetCommand ("MAGNIFY")
        Case "cmdReduce"
            g_GuriController.SetCommand ("REDUCE")
        '
        Case "cmdContinuousTurn"
            g_GuriController.SetCommand ("CONTINUOUS_TURN")
        Case "cmdESC"
            g_GuriController.SetCommand ("CONTINUOUS_TURN_STOP")
        '
        Case "cmdEqualAngleView"
            g_GuriController.SetCommand ("EQUAL_ANGLE_VIEW")
        Case "cmdTopView"
            g_GuriController.SetCommand ("TOP_VIEW")
        Case "cmdFrontView"
            g_GuriController.SetCommand ("FRONT_VIEW")
        Case "cmdSideView"
            g_GuriController.SetCommand ("SIDE_VIEW")
        Case "cmdThirdAngleProjectionMethod"
            g_GuriController.SetCommand ("THIRD_ANGLE_PROJECTION_METHOD")
        Case Else
            'do nothing
    End Select
End Sub

'------------------------------------------------
Private Sub txtPos_GotFocus(index As Integer)
'目的：ある座標値テキストボックスがフォーカスを得
'      たということは、ほかの座標値テキストボック
'      スに変更があった可能性がある。
'　　　画像の更新を行う良い機会ではないだろうか。
'------------------------------------------------
    '詳細入力モードの数値の更新を通知する
    g_GuriProController.SetCommand ("SET_TEMP_LINE")
    '表示を更新する。
    g_GuriProController.SetCommand ("PRO_INTERFACE_CHANGE")
End Sub



'------------------------------------------------
Private Sub vscrLineNumber_Change()
'目的：線番号指定用スクロールバーに変化があった
'------------------------------------------------
    g_GuriProController.SetCommand ("VSCR_LINE_NUMBER_CHANGE")
End Sub



'==========================================================
'
'       コマンドボタンから呼ばれる処理
'
'
'==========================================================
'
'
'------------------------------------------------
Private Sub cmdToolBox_Click(index As Integer)
'目的説明：     作図用ツールボックス内のボタンが押された時の処理
'入力引数：     Index As Integer    コントロール配列になっているボタンの添え字
'------------------------------------------------
    Select Case index
        Case 0
            g_GuriController.SetCommand ("TURN_UP")
        Case 1
            g_GuriController.SetCommand ("TURN_LEFT")
        Case 2
            g_GuriController.SetCommand ("TURN_RIGHT")
        Case 3
            g_GuriController.SetCommand ("TURN_DOWN")
        '
        Case 4
            g_GuriController.SetCommand ("POINTER_MOVE_X")
        Case 5
            g_GuriController.SetCommand ("POINTER_MOVE_MX")
        Case 6
            g_GuriController.SetCommand ("POINTER_MOVE_Y")
        Case 7
            g_GuriController.SetCommand ("POINTER_MOVE_MY")
        Case 8
            g_GuriController.SetCommand ("POINTER_MOVE_Z")
        Case 9
            g_GuriController.SetCommand ("POINTER_MOVE_MZ")
        '
        Case 10
            g_GuriController.SetCommand ("RETURN_POINTER_TO_ORIGIN")
        Case 11
            g_GuriController.SetCommand ("DEL_TAIL")
        Case 12
            g_GuriController.SetCommand ("APPLY")
        '
        Dim i As Integer    'counter
        Case 13 'Xx10
            For i = 1 To 10
                g_GuriController.SetCommand ("POINTER_MOVE_X")
            Next i
        Case 14 'Yx10
            For i = 1 To 10
                g_GuriController.SetCommand ("POINTER_MOVE_Y")
            Next i
        Case 15 'Zx10
            For i = 1 To 10
                g_GuriController.SetCommand ("POINTER_MOVE_Z")
            Next i
        Case 16 '-Xx10
            For i = 1 To 10
                g_GuriController.SetCommand ("POINTER_MOVE_MX")
            Next i
        Case 17 '-Yx10
            For i = 1 To 10
                g_GuriController.SetCommand ("POINTER_MOVE_MY")
            Next i
        Case 18 '-Zx10
            For i = 1 To 10
                g_GuriController.SetCommand ("POINTER_MOVE_MZ")
            Next i
    End Select
    'キー操作による誤動作を防ぐためにフォーカスをボタンからピクチャボックスに移動
    Me.picSecondaryTools.SetFocus
End Sub


'------------------------------------------------
Private Sub cmdProInterface_Click(index As Integer)
'目的：詳細入力モード（旧プロフェッショナルモード
'      ）インターフェイスからのコマンドを振り分け
'      る。
'------------------------------------------------
    Select Case index
        Case 0
            g_GuriProController.SetCommand ("TURN_UP")
        Case 1
            g_GuriProController.SetCommand ("TURN_LEFT")
        Case 2
            g_GuriProController.SetCommand ("TURN_RIGHT")
        Case 3
            g_GuriProController.SetCommand ("TURN_DOWN")
        Case 4
            g_GuriProController.SetCommand ("APPLY_LINE")
        Case 5
            g_GuriProController.SetCommand ("DELETE_LINE")
        Case 6
            g_GuriProController.SetCommand ("NEW_LINE")
            
        Case Else
            'do nothing
    End Select
    Me.picProInterface.SetFocus
End Sub






'==========================================================
'
'       タイマ処理（定期的にアプリケーションを観察する）
'
'
'==========================================================
'
'
'------------------------------------------------
Private Sub TurningTimer_Timer()
'目的説明：     タイマイベント。図形の回転に関わる処理
'------------------------------------------------
    g_GuriController.SetCommand ("TURNING_TIMER_CALL")
End Sub

'------------------------------------------------
Private Sub AutosaveTimer_Timer()
'目的：オートセーブ機能命令を定期的に発行する。
'------------------------------------------------
    g_GuriController.SetCommand ("AUTOSAVE")
End Sub


'
'
'
'==========================================================
'
'       キーボードからの操作を処理
'
'
'==========================================================
'
'------------------------------------------------
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'目的説明:      キーが押されたときの処理
'入力引数:      KeyCode As Integer  '押されたキーのコード
'               Shift As Integer    'シフトキーが押されているか
'戻り値:        なし
'------------------------------------------------
    frmGuriWin.KeyPreview = False
    '
    g_GuriController.SetKeyCommand KeyCode, Shift

    frmGuriWin.KeyPreview = True
End Sub
'
'==========================================================
'
'       その他
'
'
'==========================================================

'------------------------------------------------
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
'目的説明：     フォーム角の×ボタンが押されたときの処理
'------------------------------------------------
'    'フォームがアンロードされる！とコントローラに通知する。
'    Cancel = False 'あああ、これをTrueにしてたから、右上のｘが無効だったのか！2009/02/02
'    g_GuriController.SetCommand ("FIN")
    
   Dim Msg                  ' 変数を宣言します。
   Msg = "アプリケーションを終了しますか ?"
   ' [いいえ] ボタンが押されたら、QueryUnload イベントを終了します。
   If MsgBox(Msg, vbQuestion + vbYesNo, Me.Caption) = vbNo Then
        Cancel = True
    Else
        g_GuriController.SetCommand ("FIN_IMMIDIATELY")
    End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
'    Cancel = False
'    g_GuriController.SetCommand ("FIN")
End Sub


'====================================================================
'
'       サポートサブルーチンたち
'           立体グリグリの動作を助けるわき役たち
'
'====================================================================
'
'************************************************
Private Sub SetControlSizeAndPos(cont As Control, _
                co_width As Integer, co_height As Integer, _
                co_left As Integer, co_top As Integer)
'目的説明:  contで受け取ったコントロールのサイズを設定する。
'
'入力引数:
'           cont As Control         コントロールを受け取る
'           co_width As Integer     コントロールの幅
'           co_height As Integer    コントロールの高さ
'           co_left As Integer      コンテナ左上すみから横へ
'           co_top As Integer       コンテナ左上すみから下へ
'
'戻り値:    なし
'------------------------------------------------
'藤田氏、omimi氏の文献を参考  1998/02/05
    cont.Move co_left, co_top, co_width, co_height
End Sub
'************************************************












