VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Object = "{39B98B2B-C4B1-4237-9410-C3524A07059E}#1.1#0"; "ctlguriview.ocx"
Begin VB.Form frmGuriWin 
   BorderStyle     =   0  '�Ȃ�
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
   StartUpPosition =   2  '��ʂ̒���
   Begin ComctlLib.Toolbar tlbToolBar 
      Align           =   1  '�㑵��
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
            Object.ToolTipText     =   "���̃O���O���̏I��"
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
            Object.ToolTipText     =   "�}�`�f�[�^�̓ǂݍ���"
            Object.Tag             =   ""
            ImageIndex      =   2
         EndProperty
         BeginProperty Button4 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdFigSave"
            Object.ToolTipText     =   "�}�`�f�[�^�̕ۑ�"
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
            Object.ToolTipText     =   "��}���[�h�ƒʏ탂�[�h�̐؂�ւ��{�^��"
            Object.Tag             =   ""
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdNewFig"
            Object.ToolTipText     =   "���܂ł̐}�������ĐV�����}��`��"
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
            Object.ToolTipText     =   "�}��傫������"
            Object.Tag             =   ""
            ImageIndex      =   6
         EndProperty
         BeginProperty Button10 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdReduce"
            Object.ToolTipText     =   "�}������������"
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
            Object.ToolTipText     =   "�}����]������������"
            Object.Tag             =   ""
            ImageIndex      =   8
         EndProperty
         BeginProperty Button13 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdESC"
            Object.ToolTipText     =   "��]���~�߂�"
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
            Object.ToolTipText     =   "���ʐ}��\��"
            Object.Tag             =   ""
            ImageIndex      =   10
         EndProperty
         BeginProperty Button16 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdTopView"
            Object.ToolTipText     =   "���ʐ}��\��"
            Object.Tag             =   ""
            ImageIndex      =   11
         EndProperty
         BeginProperty Button17 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdSideView"
            Object.ToolTipText     =   "�E���ʐ}��\��"
            Object.Tag             =   ""
            ImageIndex      =   12
         EndProperty
         BeginProperty Button18 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdEqualAngleView"
            Object.ToolTipText     =   "���p�}��\��"
            Object.Tag             =   ""
            ImageIndex      =   13
         EndProperty
         BeginProperty Button19 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "cmdThirdAngleProjectionMethod"
            Object.ToolTipText     =   "�O�p�@�Ő}�`��\�����܂��B"
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
         BorderStyle     =   1  '����
         Height          =   255
         Left            =   1200
         TabIndex        =   51
         Top             =   600
         Width           =   3375
      End
      Begin VB.Label lblAuthorString 
         BorderStyle     =   1  '����
         Height          =   255
         Left            =   1200
         TabIndex        =   50
         Top             =   240
         Width           =   3375
      End
      Begin VB.Label lblReference 
         BackColor       =   &H0000FFFF&
         Caption         =   "�Q�l���"
         Height          =   255
         Left            =   120
         TabIndex        =   49
         Top             =   600
         Width           =   735
      End
      Begin VB.Label lblAuthor 
         BackColor       =   &H0000FFFF&
         Caption         =   "�����"
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
         Caption         =   "�V������"
         Height          =   375
         Index           =   6
         Left            =   480
         Picture         =   "frmGuriWin.frx":8232
         TabIndex        =   38
         Top             =   4560
         Width           =   1455
      End
      Begin VB.CommandButton cmdProInterface 
         Caption         =   "�폜"
         Height          =   375
         Index           =   5
         Left            =   480
         Picture         =   "frmGuriWin.frx":853C
         TabIndex        =   37
         Top             =   4200
         Width           =   1455
      End
      Begin VB.CommandButton cmdProInterface 
         Caption         =   "����"
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
         Alignment       =   1  '�E����
         Height          =   375
         Index           =   5
         Left            =   1320
         TabIndex        =   29
         Text            =   "0"
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '�E����
         Height          =   375
         Index           =   4
         Left            =   1320
         TabIndex        =   28
         Text            =   "0"
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '�E����
         Height          =   375
         Index           =   3
         Left            =   840
         TabIndex        =   27
         Text            =   "0"
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '�E����
         Height          =   375
         Index           =   2
         Left            =   840
         TabIndex        =   26
         Text            =   "0"
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '�E����
         Height          =   375
         Index           =   1
         Left            =   360
         TabIndex        =   25
         Text            =   "0"
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox txtPos 
         Alignment       =   1  '�E����
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
         Style           =   1  '���̨���
         TabIndex        =   23
         Top             =   600
         Width           =   735
      End
      Begin VB.CommandButton cmdProInterface 
         Height          =   495
         Index           =   2
         Left            =   1080
         Picture         =   "frmGuriWin.frx":8E5A
         Style           =   1  '���̨���
         TabIndex        =   22
         Top             =   600
         Width           =   735
      End
      Begin VB.CommandButton cmdProInterface 
         Height          =   375
         Index           =   3
         Left            =   360
         Picture         =   "frmGuriWin.frx":9164
         Style           =   1  '���̨���
         TabIndex        =   21
         Top             =   1080
         Width           =   1455
      End
      Begin VB.CommandButton cmdProInterface 
         Height          =   375
         Index           =   0
         Left            =   360
         Picture         =   "frmGuriWin.frx":946E
         Style           =   1  '���̨���
         TabIndex        =   20
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label lblLineNumber 
         Alignment       =   2  '��������
         BackStyle       =   0  '����
         Caption         =   "LineNo.  0 / 100"
         BeginProperty Font 
            Name            =   "�l�r �o�S�V�b�N"
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
         Alignment       =   2  '��������
         BackStyle       =   0  '����
         Caption         =   "��"
         BeginProperty Font 
            Name            =   "�l�r �o�S�V�b�N"
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
         Alignment       =   2  '��������
         BackStyle       =   0  '����
         Caption         =   "��"
         BeginProperty Font 
            Name            =   "�l�r �o�S�V�b�N"
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
         Alignment       =   2  '��������
         BackStyle       =   0  '����
         Caption         =   "Z"
         BeginProperty Font 
            Name            =   "�l�r �o�S�V�b�N"
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
         Alignment       =   2  '��������
         BackStyle       =   0  '����
         Caption         =   "Y"
         BeginProperty Font 
            Name            =   "�l�r �o�S�V�b�N"
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
         Alignment       =   2  '��������
         BackStyle       =   0  '����
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "�l�r �o�S�V�b�N"
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
         Style           =   1  '���̨���
         TabIndex        =   15
         Top             =   3240
         Width           =   1335
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   615
         Index           =   0
         Left            =   360
         Picture         =   "frmGuriWin.frx":17026
         Style           =   1  '���̨���
         TabIndex        =   13
         Top             =   120
         Width           =   1455
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   735
         Index           =   12
         Left            =   360
         Picture         =   "frmGuriWin.frx":17330
         Style           =   1  '���̨���
         TabIndex        =   12
         Top             =   4320
         Width           =   1335
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   11
         Left            =   360
         Picture         =   "frmGuriWin.frx":17BFA
         Style           =   1  '���̨���
         TabIndex        =   11
         Top             =   3840
         Width           =   1335
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   9
         Left            =   960
         Picture         =   "frmGuriWin.frx":184C4
         Style           =   1  '���̨���
         TabIndex        =   10
         Top             =   2760
         Width           =   615
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   8
         Left            =   480
         Picture         =   "frmGuriWin.frx":187CE
         Style           =   1  '���̨���
         TabIndex        =   9
         Top             =   2760
         Width           =   495
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   7
         Left            =   960
         Picture         =   "frmGuriWin.frx":18AD8
         Style           =   1  '���̨���
         TabIndex        =   8
         Top             =   2280
         Width           =   615
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   6
         Left            =   480
         Picture         =   "frmGuriWin.frx":18DE2
         Style           =   1  '���̨���
         TabIndex        =   7
         Top             =   2280
         Width           =   495
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   5
         Left            =   960
         Picture         =   "frmGuriWin.frx":190EC
         Style           =   1  '���̨���
         TabIndex        =   6
         Top             =   1800
         Width           =   615
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   4
         Left            =   480
         Picture         =   "frmGuriWin.frx":193F6
         Style           =   1  '���̨���
         TabIndex        =   5
         Top             =   1800
         Width           =   495
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   615
         Index           =   3
         Left            =   360
         Picture         =   "frmGuriWin.frx":19700
         Style           =   1  '���̨���
         TabIndex        =   4
         Top             =   1200
         Width           =   1455
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   2
         Left            =   1080
         Picture         =   "frmGuriWin.frx":19A0A
         Style           =   1  '���̨���
         TabIndex        =   3
         Top             =   720
         Width           =   735
      End
      Begin VB.CommandButton cmdToolBox 
         Height          =   495
         Index           =   1
         Left            =   360
         Picture         =   "frmGuriWin.frx":19D14
         Style           =   1  '���̨���
         TabIndex        =   2
         Top             =   720
         Width           =   735
      End
   End
   Begin ComctlLib.StatusBar sbrCurrentCondition 
      Align           =   2  '������
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
            Text            =   "�����F"
            TextSave        =   "�����F"
            Key             =   "sbrExplanation"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel2 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Text            =   "���_�̊p�x�F"
            TextSave        =   "���_�̊p�x�F"
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
      Caption         =   "�t�@�C��(&F)"
      Begin VB.Menu mnuFileLoad 
         Caption         =   "�Ǎ���(&L)"
         Shortcut        =   ^L
      End
      Begin VB.Menu mnuFileSave 
         Caption         =   "�ۑ�"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFileInfo 
         Caption         =   "�f�[�^�t�@�C�����"
      End
      Begin VB.Menu mnuFileDataFolder 
         Caption         =   "���݂̃f�[�^�ۑ���t�H���_"
      End
      Begin VB.Menu mnuFileCopyright 
         Caption         =   "����ҏ��ҏW"
      End
      Begin VB.Menu mnuFileHyphenForOthers 
         Caption         =   "-"
      End
      Begin VB.Menu mnuViewThumbnail 
         Caption         =   "�T���l�C���\��"
      End
      Begin VB.Menu mnuFileParaParaAnime 
         Caption         =   "�ς�ς�A�j���[�V�����쐬"
      End
      Begin VB.Menu mnuFileHyphenForPrint 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFilePrint 
         Caption         =   "���"
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
         Caption         =   "�I��"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "�ҏW(&E)"
      Begin VB.Menu mnuDraw 
         Caption         =   "��}"
      End
      Begin VB.Menu mnuNewFig 
         Caption         =   "�V�K�}��"
      End
      Begin VB.Menu hifun4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCopy 
         Caption         =   "�R�s�["
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "�\��(&V)"
      Begin VB.Menu mnuViewMagnify 
         Caption         =   "�g��"
      End
      Begin VB.Menu mnuViewReduce 
         Caption         =   "�k��"
      End
      Begin VB.Menu mnuViewHyphen 
         Caption         =   "-"
      End
      Begin VB.Menu mnuContinuousTurn 
         Caption         =   "�A����]�\��"
      End
      Begin VB.Menu mnuSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFrontView 
         Caption         =   "���ʐ}"
      End
      Begin VB.Menu mnuTopView 
         Caption         =   "���ʐ}"
      End
      Begin VB.Menu mnuSideView 
         Caption         =   "�E���ʐ}"
      End
      Begin VB.Menu mnuEqualAngleView 
         Caption         =   "���p�}"
      End
      Begin VB.Menu haifun 
         Caption         =   "-"
      End
      Begin VB.Menu mnuThirdAngleProjectionMethod 
         Caption         =   "�O�p�@�\��"
      End
   End
   Begin VB.Menu mnuOption 
      Caption         =   "�I�v�V����(&O)"
      Begin VB.Menu mnuDifficulty 
         Caption         =   "����̓�Փx"
         Begin VB.Menu mnuBeginner 
            Caption         =   "�����@Step20mm�@MAX 100mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuMidClass 
            Caption         =   "�����@Step10mm�@MAX 200mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuSenior 
            Caption         =   "�㋉�@Step10mm�@MAX1000mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuSpecial 
            Caption         =   "�����@Step 5mm�@MAX1000mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuSuperSpecial 
            Caption         =   "�������@Step 1mm�@Max1000mm"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuGuriRobo5mm 
            Caption         =   "�O�����{5mm�iXmax=68mm,Ymax=78mm,Z=0,Step=5mm)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuGuriRobo1mm 
            Caption         =   "�O�����{1mm�iXmax=68mm,Ymax=78mm,Z=0,Step=1mm)"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu hifun2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuWiindowSize 
         Caption         =   "��ʂ̑傫��"
         Begin VB.Menu mnuVAIOC1Size 
            Caption         =   "���o�C���p(800�~400)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuNormalSize 
            Caption         =   "�m�[�}��(640�~480)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuExpansion1 
            Caption         =   "�g���P(800�~600)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuExpansion2 
            Caption         =   "�g���Q(1024�~768)"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu mnuHifun2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuOptionProInterface 
         Caption         =   "�ڍד��̓��[�h"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuDrawEnabled 
         Caption         =   "��}������"
         Checked         =   -1  'True
         Enabled         =   0   'False
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSaveEnabled 
         Caption         =   "�f�[�^�̕ۑ�������"
         Checked         =   -1  'True
         Enabled         =   0   'False
         Visible         =   0   'False
      End
      Begin VB.Menu mnuHiFun 
         Caption         =   "-"
      End
      Begin VB.Menu mnuDataPathFixed 
         Caption         =   "�f�[�^�̕ۑ��ꏊ�Œ�"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuOptionHifun3 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuOptionDataVersion200 
         Caption         =   "�f�[�^�`���̕ύX�iVer200�𗘗p�j"
         Checked         =   -1  'True
         Enabled         =   0   'False
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "�w���v(&H)"
      Begin VB.Menu mnuHelpCall 
         Caption         =   "�w���v"
      End
      Begin VB.Menu mnuShowVersion 
         Caption         =   "�o�[�W�������"
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
'Name:        frmGuriWin �A�v���P�[�V�����̊�
'Author:      ���c ��(a_hirata@siscom.or.jp)
'CreateDate:  2003/01/25
'ChangeDate:
'Revision:

'====================================================================
'
'                   frmGuriWin.frm
'           ���̃O���O���̊�A���C���t�H�[���ł��B
'
'====================================================================
'
'
'   �\�[�X�t�@�C���̖ڎ�
'       �E�t�H�[�����ɏ������߂�R�[�h�́A���ׂāA���̃t�H�[���̌`��
'         �ƕ��i�̎����𐧌䂷�邽�߂̂��̂Ɍ���܂��B
'       �E�قڂ��ׂẴC�x���g�R�[�h���R���g���[���I�u�W�F�N�g�Ɏ���
'         �悤�ɈϏ����܂��B
'         g_GuriController.SetCommand (�R�}���h������)
'         ����́A�����R�}���h��Undo�ARedo���������邽�߂̕z�΂ł��B
'
'       �E�t�H�[������肦��ꍇ�����X�g�A�b�v
'           �t�H�[���̑傫���i"800x400","600x480","800x600","1024x768")���Ƃ�
'
'               �ʏ탂�[�h
'                   �ʏ�Œʏ�
'                       �ȈՓ��̓��[�h      ������������́i�m�d�v�A��}�|�C���^����{�^���j
'                       �ڍד��̓��[�h      ������������́i�m�d�v�A��}�|�C���^����{�^���j
'                   �ʏ�ő�O�p�@��撆
'                       �ȈՓ��̓��[�h      ������������́i�m�d�v�A��}�|�C���^����{�^���A���ʐ}���Œ莋�_�{�^���j
'                       �ڍד��̓��[�h      ������������́i�m�d�v�A��}�|�C���^����{�^���A���ʐ}���Œ莋�_�{�^���j
'                   �ʏ�ő�O�p�@
'                       �ȈՓ��̓��[�h      ������������́i�m�d�v�A��}�|�C���^����{�^���j
'                       �ڍד��̓��[�h      ������������́i�m�d�v�A��}�|�C���^����{�^���j
'                   �ʏ탂�[�h�ŘA����]��
'                       �ȈՓ��̓��[�h      ������������́i�m�d�v�A��}�|�C���^����{�^���C���ʐ}���Œ莋�_�{�^���j
'                       �ڍד��̓��[�h      ������������́i�m�d�v�A��}�|�C���^����{�^���C���ʐ}���Œ莋�_�{�^���j
'               ��}���[�h
'                   ��}�Œʏ�
'                       �ȈՓ��̓��[�h
'                       �ڍד��̓��[�h
'                   ��}�ő�O�p�@
'                       �ȈՓ��̓��[�h
'                       �ڍד��̓��[�h
'                   ��}���[�h�ŘA����]
'                       �ȈՓ��̓��[�h
'                       �ڍד��̓��[�h
'
'                       �O�p�@�p�s�N�`���{�b�N�X�̎����́A�O�p�@�����ŁA������Ǝn��������ׂ��B
'
'================================================
' �I�u�W�F�N�g�A�ϐ��̐錾
'================================================
'------------------------------------------------
' Global
'------------------------------------------------

'------------------------------------------------
' Private
'------------------------------------------------

'��ʂ̃T�C�Y������킷��������i�[�@�h���~�c�h
Private m_FormSizeString As String
'�ݒ�\�ȃT�C�Y�͂��̂S��ނŁA����ȊO�͖��������800x400�ɂ��܂��B
'                            "800x400"
'                            "640x480"
'                            "800x600"
'                            "1024x768"

'��ʂ̃T�C�Y���i�[�B�P�ʂ̓s�N�Z��
Private m_FormWidth As Integer
Private m_FormHeight As Integer









'------------------------------------------------
' �t�H�[���̃R���X�g���N�^�@����
'------------------------------------------------

'------------------------------------------------
Private Sub Form_Load()
'�ړI�F�t�H�[�������[�h�����Ƃ��ɂ��ׂ�����
'------------------------------------------------
    '�O�p�@�\���p�s�N�`���{�b�N�X���\����
    Me.picFrontView.Visible = False
    Me.picSideView.Visible = False
    Me.picTopVIew.Visible = False
    
    '�듮��h�~�̂��߂Ƀ��[�U�Ƀc�[���o�[�̃_�u��
    '�N���b�N�ɂ��c�[���o�[�̕ύX��s����
    g_frmGuriWin.tlbToolBar.AllowCustomize = False
    
    '�L�[���͂�����
    g_frmGuriWin.KeyPreview = True
    
End Sub



'================================================
' Public Methods
'================================================

'------------------------------------------------
Public Sub SetCopyrightInfo(Author As String, Reference As String)
'�ړI�F ���쌠�����Z�b�g
'------------------------------------------------
    Me.lblAuthorString.Caption = Author
    Me.lblReferenceString.Caption = Reference
End Sub

'------------------------------------------------
Public Sub SetViewMode()
'�ړI�F VIEW_MODE���̕K�v�𖞂����悤�ɁA�e�R���g
'       ���[���̎�����ݒ�
'------------------------------------------------
    '------------------------
    '���c�[���o�[�֘A
    '�V�K�}�ʃ{�^������
    tlbToolBar.Buttons(7).Enabled = False
    '------------------------
    '�����j���[�֘A
    '�V�K�}�ʃ��j���[������
    mnuNewFig.Enabled = False
    '��Փx���j���[������
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
    '���c�[���{�b�N�X�p�s�N�`���{�b�N�X�֘A
    '�c�[���{�b�N�X�̍�}�֘A�{�^��������
    Dim i As Integer
    For i = 4 To 18
        cmdToolBox(i).Enabled = False
    Next i
    'ProInterface�̃R���g���[���ނ𖳌���
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
'�ړI�F DRAW_MODE���̕K�v�𖞂����悤�ɁA�e�R���g
'       ���[���̎�����ݒ�
'------------------------------------------------
    '------------------------
    '���c�[���o�[�֘A
    tlbToolBar.Buttons(7).Enabled = True   '�V�K�}�ʃ{�^���L��
    '------------------------
    '�����j���[�֘A
    '�V�K�}�ʃ��j���[�L����
    mnuNewFig.Enabled = True
    '��Փx���j���[�L����
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
    '���c�[���{�b�N�X�p�R���g���[���֘A
    '�c�[���{�b�N�X�̍�}�֘A�{�^���L����
    Dim i As Integer
    For i = 4 To 18
        cmdToolBox(i).Enabled = True
    Next i
    'ProInterface�p�e��R���g���[��
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
'�ړI�F��O�p�@�\���̂��߂ɁA�e��R���g���[���̈�
'      �u�A�傫���𒲐�����B
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
'�ړI�F��O�p�@�\�����������A�ʏ�̏�Ԃɖ߂�
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
'�ړI�F���݂̃t�H�[���T�C�Y��Ԃ�
'------------------------------------------------
    GetFormSize = m_FormSizeString
End Function
'------------------------------------------------
Public Sub SetFormSize(ByVal Size As String)
'�ړI�F�@�t�H�[���̃T�C�Y���w��̑傫���ɕύX����
'�����F�@size�@��ʂ̃T�C�Y�@���~�c
'                            "800x400"
'                            "640x480"
'                            "800x600"
'                            "1024x768"
'�Ԓl�F�@�Ȃ�
'------------------------------------------------
    m_FormSizeString = Size
    Me.ScaleMode = vbPixels               '�X�P�[�����[�h�̓s�N�Z���P��
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
    'frmGuriWin�̃T�C�Y�ݒ�
    Me.Width = m_FormWidth * Screen.TwipsPerPixelX
    Me.Height = m_FormHeight * Screen.TwipsPerPixelY
    'frmGuriWin�̈ʒu�𒲐�
    Me.Left = (Screen.Width - Me.Width) / 2
    Me.Top = (Screen.Height - Me.Height) / 2
    'sbrCurrentCondition�̔z�u
    Call SetsbrCurrentCondition
    'picSecondaryToolBos�̔z�u
    Call SetSecondaryToolButtons
    'fraCopyright�̔z�u
    If g_AppData.FormSize = "640x480" Or g_AppData.FormSize = "800x600" Or g_AppData.FormSize = "1024x768" Then
        Me.fraCopyright.Visible = True
        Call SetCopyrightFrame
    Else
        Me.fraCopyright.Visible = False
    End If
    'picProInterface�̔z�u
    Call SetProInterface
    'ctlGuriView�̔z�u
    ctlGuriView.ControlWidth = (Me.ScaleWidth - Me.picSecondaryTools.Width) * Screen.TwipsPerPixelX
    ctlGuriView.ControlHeight = (Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height) * Screen.TwipsPerPixelY
    ctlGuriView.Left = 0
    ctlGuriView.Top = Me.tlbToolBar.Height
    ctlGuriView.ControlScaleWidth = m_FormWidth - Me.picSecondaryTools.Width
    ctlGuriView.ControlScaleHeight = m_FormHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height
    '�����Data��View�ɔ��f
    ctlGuriView.Draw
    '�t�H�[���̕\�������t���b�V��
    Me.Refresh
End Sub


'------------------------------------------------
'�ړI�F�C���^�[�t�F�C�X��؂�ւ���B
Public Sub ChangeToProInterface()
    With Me
        .picSecondaryTools.Visible = False
        .picProInterface.Visible = True
        .picProInterface.SetFocus   '���ꂪ��؂������B
    End With
End Sub

Public Sub ChangeToEasyInterface()
    With Me
        .picSecondaryTools.Visible = True
        .picProInterface.Visible = False
        .picSecondaryTools.SetFocus '�Ƃ��Ă���؂������B
    End With
End Sub



'------------------------------------------------
'�ړI�F�e�摜���N���b�v�{�[�h�֑���B
'�@�@�@���̂Ƃ�������摜�́AGuriView�R���g���[
'      ���ɕ\������Ă���摜�B
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
'�ړI�F�A�v���P�[�V�����S�̂̉摜���N���b�v�{�[�h�֑��荞�ށB
'------------------------------------------------
    Dim keyevents As CKeyEventsForClipboardHandling
    Set keyevents = New CKeyEventsForClipboardHandling
    keyevents.CopyEntireFormToClipboard
End Sub


'------------------------------------------------
Public Sub SetDifficulty(ByVal Difficulty As String)
'�ړI�F��}��Փx�̐ݒ�
'------------------------------------------------
    '���j���[�̏�Ԑݒ�
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
    '��ԕω����R���g���[���[�ɒʒm
    g_GuriController.SetCommand (Difficulty)
End Sub







'================================================
' Private Methods
'================================================


'------------------------------------------------
Private Sub SetsbrCurrentCondition()
'�ړI�F�����̃X�e�[�^�X�o�[�̔z�u
'�����F�Ȃ�
'�Ԓl�F�Ȃ�
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
'�ړI�����F     ���쌠���t���[���̔z�u
'���͈����F     �Ȃ�
'�߂�l�F       �Ȃ�
'------------------------------------------------
'
'
    
    With Me.fraCopyright
        .Top = Me.picSecondaryTools.Top + Me.picSecondaryTools.Height
        .Left = Me.picSecondaryTools.Left
        .Width = Me.picSecondaryTools.Width
        .Height = Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height - Me.picSecondaryTools.Height
    End With
    
    Dim CIW, CIH As Integer '���쌠���t���[���̕��E����
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
'�ړI�����F     ��}�p�c�[���{�b�N�X�̃{�^���̔z�u
'���͈����F     �Ȃ�
'�߂�l�F       �Ȃ�
'------------------------------------------------
'���[��A���ɂ����͂��܂��܂��Ȃ��Ƃ����Ȃ��̂ł��B
'����܂肱�̍�Ƃ͍D���ł͂Ȃ����A���Ȃ����Ƃɂ͐i�܂Ȃ��B
'�����S���̃f�U�C���͂܂��܂��C�ɓ��������ǁA�n�j�̃f�U�C����������B
'

    'picSecondaryToolBox�̑傫���ƈʒu
    Dim STBW As Integer, STBH As Integer, STBL As Integer, STBT As Integer
    STBW = 150: STBH = Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height
    If STBH > 300 Then STBH = 300   '�c�[���{�b�N�X�̑傫�����A�ő�ł��T�O�O�ɐ���
    STBL = Me.ScaleWidth - STBW: STBT = Me.tlbToolBar.Height
    SetControlSizeAndPos Me.picSecondaryTools, STBW, STBH, STBL, STBT

    '���͒��g
    '�{�^���͂X�i�ɕ�����Ă���B
    '�㉺�̃}�[�W����ɉ����A��̂̃}�[�W����݂���
    Dim MarginHeight As Integer
    Dim ButtonHeight As Integer
    Dim ButtonWidth As Integer
    Dim ButtonLeft As Integer
    With Me
        '�{�^���̍����́ASecondaryToolBox�̍������P�O�����������̂Ƃ���B
        '�{�^���̕��́ASecondaryToolBox�̕��̂V�O���Ƃ���B
        '�㉺�A�{�^���Ԃ̃}�[�W���́A�P�O���̂P�̗]�T���S�����������̂�p����B
        .picSecondaryTools.ScaleMode = vbPixels
        ButtonHeight = STBH / 10
        ButtonWidth = STBW * 0.7
        MarginHeight = ButtonHeight / 4
        ButtonLeft = .picSecondaryTools.Width * 0.15
        '����̃}�[�W����
        '���{�^��
        Call SetControlSizeAndPos(.cmdToolBox(0), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight)
        Call SetControlSizeAndPos(.cmdToolBox(1), ButtonWidth / 2, ButtonHeight, ButtonLeft, MarginHeight + ButtonHeight)
        Call SetControlSizeAndPos(.cmdToolBox(2), ButtonWidth / 2, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight + ButtonHeight)
        Call SetControlSizeAndPos(.cmdToolBox(3), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight + ButtonHeight * 2)
        '���}�[�W����
        '�w�C�x�C�y�{�^��
        Call SetControlSizeAndPos(.cmdToolBox(4), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 3)
        Call SetControlSizeAndPos(.cmdToolBox(5), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight * 2 + ButtonHeight * 3)
        Call SetControlSizeAndPos(.cmdToolBox(6), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.cmdToolBox(7), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.cmdToolBox(8), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth * 1 / 10, MarginHeight * 2 + ButtonHeight * 5)
        Call SetControlSizeAndPos(.cmdToolBox(9), ButtonWidth * 4 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight * 2 + ButtonHeight * 5)
        '�{���{�^��
        Call SetControlSizeAndPos(.cmdToolBox(13), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 3)
        Call SetControlSizeAndPos(.cmdToolBox(14), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.cmdToolBox(15), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 5)
        Call SetControlSizeAndPos(.cmdToolBox(16), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2 + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 3)
        Call SetControlSizeAndPos(.cmdToolBox(17), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2 + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 4)
        Call SetControlSizeAndPos(.cmdToolBox(18), ButtonWidth * 1 / 10, ButtonHeight, ButtonLeft + ButtonWidth / 2 + ButtonWidth * 4 / 10, MarginHeight * 2 + ButtonHeight * 5)
        '���}�[�W����
        '���_���A�{�^��
        Call SetControlSizeAndPos(.cmdToolBox(10), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 6)
        '�폜�{�^��
        Call SetControlSizeAndPos(.cmdToolBox(11), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 7)
        '�m��{�^��
        Call SetControlSizeAndPos(.cmdToolBox(12), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 8)
        '�����̃}�[�W����
    

    End With
End Sub
'************************************************

'------------------------------------------------
Private Sub SetProInterface()
'�ړI�F�v���t�F�b�V���i���C���^�[�t�F�C�X�̔z�u
'------------------------------------------------
    'picProInterface�̑傫���ƈʒu
    Dim PIW As Integer, PIH As Integer, PIL As Integer, PIT As Integer
    PIW = 150: PIH = Me.ScaleHeight - Me.tlbToolBar.Height - Me.sbrCurrentCondition.Height
    If PIH > 300 Then PIH = 300 '�C���^�[�t�F�C�X�̑傫�����ő�ł��T�O�O�ɐ���
    PIL = Me.ScaleWidth - PIW: PIT = Me.tlbToolBar.Height
    SetControlSizeAndPos Me.picProInterface, PIW, PIH, PIL, PIT

    '�㉺�̃}�[�W����ɉ����A��̂̃}�[�W����݂���
    Dim MarginHeight As Integer
    Dim ButtonHeight As Integer
    Dim ButtonWidth As Integer
    Dim ButtonLeft As Integer
    With Me
        '�{�^���̍����́AProInterface�̍�����12�����������̂Ƃ���B
        '�{�^���̕��́AProInterface�̕��̂V�O���Ƃ���B
        '�㉺�A�{�^���Ԃ̃}�[�W���́A�P�O���̂P�̗]�T���S�����������̂�p����B
        .picProInterface.ScaleMode = vbPixels
        ButtonHeight = PIH / 11
        ButtonWidth = PIW * 0.7
        MarginHeight = ButtonHeight / 4
        ButtonLeft = PIW * 0.15
        '����̃}�[�W����
        '���{�^��
        Call SetControlSizeAndPos(.cmdProInterface(0), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight)
        Call SetControlSizeAndPos(.cmdProInterface(1), ButtonWidth / 2, ButtonHeight, ButtonLeft, MarginHeight + ButtonHeight)
        Call SetControlSizeAndPos(.cmdProInterface(2), ButtonWidth / 2, ButtonHeight, ButtonLeft + ButtonWidth / 2, MarginHeight + ButtonHeight)
        Call SetControlSizeAndPos(.cmdProInterface(3), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight + ButtonHeight * 2)
        '���}�[�W����
        '<LineNumber>
        Call SetControlSizeAndPos(.lblLineNumber, ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 2 + ButtonHeight * 3)
        '���}�[�W����
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
        '���}�[�W����
        '<CommandButtons>
        Call SetControlSizeAndPos(.cmdProInterface(4), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 7)
        Call SetControlSizeAndPos(.cmdProInterface(5), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 8)
        Call SetControlSizeAndPos(.cmdProInterface(6), ButtonWidth, ButtonHeight, ButtonLeft, MarginHeight * 3 + ButtonHeight * 9)
        
        'NewLine�{�^���͂�����������s�v��������Ȃ��B�����Ȃ��悤�ɂ��Ă������B
        .cmdProInterface(6).Visible = False
        
        
        '<VScroll Bar>
        g_GuriProController.SetCommand ("SETUP_VSCROLL_BAR")
        g_GuriProController.SetCommand ("SETUP_LINE_NUMBER_LABEL")
        
'        '�����̃}�[�W����
        
    End With

End Sub









'==========================================================
'
'           ���j���[�o�[����Ă΂��T�u���[�`��
'
'==========================================================
'
'************************************************
'               �t�@�C�����j���[
'************************************************

'----------------------------
Private Sub mnuFileLoad_Click()
'�ړI�����F     �}�`�f�[�^�����[�h����
'----------------------------
    g_GuriController.SetCommand ("LOAD")
End Sub


'----------------------------
Private Sub mnuFileSave_click()
'�ړI�����F     �}�`�f�[�^���Z�[�u����
'----------------------------
    g_GuriController.SetCommand ("SAVE")
End Sub

'----------------------------
Private Sub mnuFileDataFolder_Click()
'�ړI�����F     ���݂̃f�[�^�ۑ����\������
    g_GuriController.SetCommand ("SHOW_CURRENT_DATAPATH")
End Sub



'----------------------------
Private Sub mnuFileCopyright_Click()
'�ړI�����F     ���쌠����ҏW����_�C�A���O��\������
    g_GuriController.SetCommand ("SHOW_COPYRIGHT_EDIT_DIALOG")


End Sub





''------------------------------------------------
'Private Sub mnuOptionDataVersion200_Click()
''�ړI�F�f�[�^�t�@�C���̌`����ύX����
''------------------------------------------------
'    g_GuriController.SetCommand ("CHANGE_DATAFILE_VERSION")
'End Sub

'------------------------------------------------
Private Sub mnuOptionProInterface_Click()
'�ړI�F�v���t�F�b�V���i���C���^�[�t�F�C�X�ƒʏ�C���^�[�t�F�C�X�̐؂�ւ�
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
'�ړI�����F     �f�[�^�t�H���_�̐}�`���T���l�C���\������
'------------------------------------------------
    g_GuriController.SetCommand ("VIEW_THUMBNAIL")
End Sub

'------------------------------------------------
Private Sub mnuFileInfo_Click()
'�ړI�����F�f�[�^�t�@�C���Ɋւ������\������
'------------------------------------------------
    g_GuriController.SetCommand ("VIEW_DATA_FILE_INFO")
End Sub

'------------------------------------------------
Private Sub mnuFileParaParaAnime_Click()
'�ړI�F�ς�ς�A�j���[�V�����p�r�b�g�}�b�v�o��
'------------------------------------------------
    g_GuriController.SetCommand ("PARA_PARA_ANIME")
End Sub


'------------------------------------------------
Private Sub mnuFilePrint_Click()
'�ړI�F����R�}���h���s
'------------------------------------------------
    '�t�H�[���S�̂����
    'g_GuriController.SetCommand ("PRINT_ENTIRE_FORM")
    '�\�����̉摜�݂̂����
    g_GuriController.SetCommand ("PRINT_MONOCHROME_PICTURE")
End Sub


'------------------------------------------------
Private Sub mnuFileRecent_Click(index As Integer)
'�ړI�F�ŋߗ��p�����f�[�^�t�@�C����ǂݍ���
'------------------------------------------------
    g_GuriController.SetCommand ("LOAD_RECENT_" & index)
End Sub

'------------------------------------------------
Private Sub mnuFin_click()
'�ړI�����F     �\�t�g�E�G�A�̏I��
'------------------------------------------------
    g_GuriController.SetCommand ("FIN")
End Sub




'************************************************
'�ҏW���j���[
'************************************************
'------------------------------------------------
Private Sub mnuDraw_click()
'�ړI�����F     ��}���[�h�g�O���X�C�b�`
'------------------------------------------------
    g_GuriController.SetCommand ("CHANGE_MODE")
    Me.mnuDraw.Checked = IIf(g_AppData.Mode = "DRAW_MODE", _
                             True, False)
End Sub

'------------------------------------------------
Private Sub mnuNewFig_Click()
'�ړI����:      �}�`�f�[�^���N�����B��ʂ𔒎��ɂ���B
'------------------------------------------------
    g_GuriController.SetCommand ("NEW_FIGURE")
End Sub

'------------------------------------------------

'------------------------------------------------
Private Sub mnuCopy_Click()
'�ړI�����F ���m�N���̏�ԂŃN���b�v�{�[�h�ɓ]��
'------------------------------------------------
    g_GuriController.SetCommand ("MONOCHROME_COPY")
End Sub



'------------------------------------------------
Private Sub mnuColorCopy_Click()
'�ړI����:      �J���[�̏�ԂŃN���b�v�{�[�h�ɓ]��
'------------------------------------------------
    g_GuriController.SetCommand ("NORMAL_COPY")
End Sub
'------------------------------------------------
Private Sub mnuMonoCopy_Click()
'�ړI����:      ���m�N���̏�ԂŃN���b�v�{�[�h�ɓ]��
'------------------------------------------------
    g_GuriController.SetCommand ("MONOCHROME_COPY")
End Sub


'************************************************
'�\�����j���[
'************************************************

'------------------------------------------------
Private Sub mnuViewMagnify_Click()
'�ړI�F�}�`���������g�債�ĕ\��
'------------------------------------------------
    g_GuriController.SetCommand ("MAGNIFY")
End Sub

'------------------------------------------------
Private Sub mnuViewReduce_Click()
'�ړI�F�}�`�������k�����ĕ\��
'------------------------------------------------
    g_GuriController.SetCommand ("REDUCE")
End Sub

'------------------------------------------------
Private Sub mnuContinuousTurn_click()
'�ړI�����F     �A����]�B��]�����g�O��
'------------------------------------------------
    g_GuriController.SetCommand ("CONTINUOUS_TURN")
End Sub

'------------------------------------------------
'------------------------------------------------
Private Sub mnuFrontView_Click()
'�ړI�����F     ���ʐ}�\��
'------------------------------------------------
    g_GuriController.SetCommand ("FRONT_VIEW")
End Sub
'------------------------------------------------
Private Sub mnuTopView_click()
'�ړI�����F     ���ʐ}�\��
'------------------------------------------------
    g_GuriController.SetCommand ("TOP_VIEW")
End Sub
'------------------------------------------------
Private Sub mnuSideView_click()
'�ړI�����F     �E���ʐ}�\��
'------------------------------------------------
    g_GuriController.SetCommand ("SIDE_VIEW")
End Sub
'------------------------------------------------
Private Sub mnuEqualAngleView_click()
'�ړI�����F     ���p�}�\��
'------------------------------------------------
    g_GuriController.SetCommand ("EQUAL_ANGLE_VIEW")
End Sub
'
'------------------------------------------------
'------------------------------------------------
Private Sub mnuThirdAngleProjectionMethod_Click()
'�ړI�����F     ��O�p�@�\��
'------------------------------------------------
    g_GuriController.SetCommand ("THIRD_ANGLE_PROJECTION_METHOD")
End Sub

'************************************************
'�I�v�V�������j���[
'************************************************
'����̓�Փx

    '�`�F�b�N�\���؂�ւ����[�e�B���e�B
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
                            
    
    
    
    '����
    Private Sub mnuBeginner_Click()
        setDifficultiesCheck True, False, False, False, False, False, False
        g_GuriController.SetCommand ("DIFFICULTY_BEGINNER")
    End Sub
    '����
    Private Sub mnuMidClass_Click()
        setDifficultiesCheck False, True, False, False, False, False, False
        g_GuriController.SetCommand ("DIFFICULTY_MIDIUM")
    End Sub
    '�㋉
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
'��ʂ̃T�C�Y�̐ݒ�
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
'�ړI�F�f�[�^�p�X�Œ�̐ݒ�A�����̃g�O��
'------------------------------------------------
    g_GuriController.SetCommand ("DATA_PATH_FIXED")
End Sub


'
'************************************************
'�w���v���j���[
'************************************************
'------------------------------------------------
Private Sub mnuHelpCall_Click()
'�ړI�F��������\��
'------------------------------------------------
    g_GuriController.SetCommand ("SHOW_HELP")

End Sub
'------------------------------------------------
Private Sub mnuShowVersion_Click()
'�ړI�F�o�[�W�������\��
'------------------------------------------------
    g_GuriController.SetCommand ("SHOW_VERSION_DIALOG")
End Sub











'==========================================================
'
'       �c�[���o�[����Ă΂��T�u���[�`��
'
'
'==========================================================
'
'------------------------------------------------
Private Sub tlbToolBar_ButtonClick(ByVal Button As ComctlLib.Button)
'�ړI�F�c�[���o�[����Ă΂�閽�߂̐U�蕪��
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
'�ړI�F������W�l�e�L�X�g�{�b�N�X���t�H�[�J�X��
'      ���Ƃ������Ƃ́A�ق��̍��W�l�e�L�X�g�{�b�N
'      �X�ɕύX���������\��������B
'�@�@�@�摜�̍X�V���s���ǂ��@��ł͂Ȃ����낤���B
'------------------------------------------------
    '�ڍד��̓��[�h�̐��l�̍X�V��ʒm����
    g_GuriProController.SetCommand ("SET_TEMP_LINE")
    '�\�����X�V����B
    g_GuriProController.SetCommand ("PRO_INTERFACE_CHANGE")
End Sub



'------------------------------------------------
Private Sub vscrLineNumber_Change()
'�ړI�F���ԍ��w��p�X�N���[���o�[�ɕω���������
'------------------------------------------------
    g_GuriProController.SetCommand ("VSCR_LINE_NUMBER_CHANGE")
End Sub



'==========================================================
'
'       �R�}���h�{�^������Ă΂�鏈��
'
'
'==========================================================
'
'
'------------------------------------------------
Private Sub cmdToolBox_Click(index As Integer)
'�ړI�����F     ��}�p�c�[���{�b�N�X���̃{�^���������ꂽ���̏���
'���͈����F     Index As Integer    �R���g���[���z��ɂȂ��Ă���{�^���̓Y����
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
    '�L�[����ɂ��듮���h�����߂Ƀt�H�[�J�X���{�^������s�N�`���{�b�N�X�Ɉړ�
    Me.picSecondaryTools.SetFocus
End Sub


'------------------------------------------------
Private Sub cmdProInterface_Click(index As Integer)
'�ړI�F�ڍד��̓��[�h�i���v���t�F�b�V���i�����[�h
'      �j�C���^�[�t�F�C�X����̃R�}���h��U�蕪��
'      ��B
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
'       �^�C�}�����i����I�ɃA�v���P�[�V�������ώ@����j
'
'
'==========================================================
'
'
'------------------------------------------------
Private Sub TurningTimer_Timer()
'�ړI�����F     �^�C�}�C�x���g�B�}�`�̉�]�Ɋւ�鏈��
'------------------------------------------------
    g_GuriController.SetCommand ("TURNING_TIMER_CALL")
End Sub

'------------------------------------------------
Private Sub AutosaveTimer_Timer()
'�ړI�F�I�[�g�Z�[�u�@�\���߂����I�ɔ��s����B
'------------------------------------------------
    g_GuriController.SetCommand ("AUTOSAVE")
End Sub


'
'
'
'==========================================================
'
'       �L�[�{�[�h����̑��������
'
'
'==========================================================
'
'------------------------------------------------
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'�ړI����:      �L�[�������ꂽ�Ƃ��̏���
'���͈���:      KeyCode As Integer  '�����ꂽ�L�[�̃R�[�h
'               Shift As Integer    '�V�t�g�L�[��������Ă��邩
'�߂�l:        �Ȃ�
'------------------------------------------------
    frmGuriWin.KeyPreview = False
    '
    g_GuriController.SetKeyCommand KeyCode, Shift

    frmGuriWin.KeyPreview = True
End Sub
'
'==========================================================
'
'       ���̑�
'
'
'==========================================================

'------------------------------------------------
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
'�ړI�����F     �t�H�[���p�́~�{�^���������ꂽ�Ƃ��̏���
'------------------------------------------------
'    '�t�H�[�����A�����[�h�����I�ƃR���g���[���ɒʒm����B
'    Cancel = False '�������A�����True�ɂ��Ă�����A�E��̂��������������̂��I2009/02/02
'    g_GuriController.SetCommand ("FIN")
    
   Dim Msg                  ' �ϐ���錾���܂��B
   Msg = "�A�v���P�[�V�������I�����܂��� ?"
   ' [������] �{�^���������ꂽ��AQueryUnload �C�x���g���I�����܂��B
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
'       �T�|�[�g�T�u���[�`������
'           ���̃O���O���̓����������킫������
'
'====================================================================
'
'************************************************
Private Sub SetControlSizeAndPos(cont As Control, _
                co_width As Integer, co_height As Integer, _
                co_left As Integer, co_top As Integer)
'�ړI����:  cont�Ŏ󂯎�����R���g���[���̃T�C�Y��ݒ肷��B
'
'���͈���:
'           cont As Control         �R���g���[�����󂯎��
'           co_width As Integer     �R���g���[���̕�
'           co_height As Integer    �R���g���[���̍���
'           co_left As Integer      �R���e�i���シ�݂��牡��
'           co_top As Integer       �R���e�i���シ�݂��牺��
'
'�߂�l:    �Ȃ�
'------------------------------------------------
'���c���Aomimi���̕������Q�l  1998/02/05
    cont.Move co_left, co_top, co_width, co_height
End Sub
'************************************************












