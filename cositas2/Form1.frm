VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   Caption         =   "Form1"
   ClientHeight    =   10590
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   23250
   LinkTopic       =   "Form1"
   ScaleHeight     =   10590
   ScaleWidth      =   23250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.OptionButton Option2 
      Caption         =   "Option2"
      Height          =   855
      Left            =   3360
      TabIndex        =   9
      Top             =   4320
      Width           =   1335
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Garen"
      Height          =   855
      Left            =   3360
      TabIndex        =   8
      Top             =   3240
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   735
      Left            =   11280
      TabIndex        =   7
      Top             =   4440
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   8880
      TabIndex        =   2
      Text            =   "Text2"
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   8160
      TabIndex        =   1
      Top             =   4560
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   7200
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   3840
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "Label4"
      Height          =   975
      Left            =   12000
      TabIndex        =   6
      Top             =   1800
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   975
      Left            =   9960
      TabIndex        =   5
      Top             =   1800
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   975
      Left            =   7800
      TabIndex        =   4
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   975
      Left            =   5760
      TabIndex        =   3
      Top             =   1800
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Carga, Carga2 As String
Private Sub Command1_Click()
    Carga = Text1.Text
    Carga2 = Text2.Text
'    Open ("C:\Documents and Settings\asdakj\Escritorio\cosas.txt") For Output As #1
        Open ("C:\Documents and Settings\asdakj\Escritorio\cosas.txt") For Append As #1
        Write #1, Cargar, Cargar2
    Close #1
End Sub
Private Sub Command2_Click()

    Open ("C:\Documents and Settings\asdakj\Escritorio\cosas.txt") For Input As #1
        Input #1, Carga, Carga2
        Label1.Caption = Carga
        Label2.Caption = Carga2
        Input #1, Carga2, Carga
        Label3.Caption = Carga
        Label4.Caption = Option1.Value
        
        
    Close #1
End Sub
