VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000D&
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   975
      Left            =   13920
      TabIndex        =   10
      Top             =   3240
      Width           =   2775
   End
   Begin VB.Label Label2 
      Height          =   975
      Index           =   0
      Left            =   6120
      TabIndex        =   11
      Top             =   120
      Width           =   2295
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   9
      Left            =   2760
      TabIndex        =   9
      Top             =   10920
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   8
      Left            =   2760
      TabIndex        =   8
      Top             =   9720
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   7
      Left            =   2760
      TabIndex        =   7
      Top             =   8520
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   6
      Left            =   2760
      TabIndex        =   6
      Top             =   7320
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   5
      Left            =   2760
      TabIndex        =   5
      Top             =   6120
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   4
      Left            =   2760
      TabIndex        =   4
      Top             =   4920
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   3
      Left            =   2760
      TabIndex        =   3
      Top             =   3720
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   2
      Left            =   2760
      TabIndex        =   2
      Top             =   2520
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   1
      Left            =   2760
      TabIndex        =   1
      Top             =   1320
      Width           =   3015
   End
   Begin VB.Label Label1 
      Height          =   975
      Index           =   0
      Left            =   2760
      TabIndex        =   0
      Top             =   120
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim A, B As Integer
Dim elpepe1, etesech2 As String
Dim topardo As Double

Private Sub Command1_Click()
    
    Open ("C:\Documents and Settings\asdakj\Escritorio/nombresalumnos.txt") For Input As #1
    
    For A = 1 To 9
    
    Load Label2(A)
    
    With Label2(A)
        
        .Left = Label1(A).Left + 3360
        
        .Visible = True
        
        .Top = Label1(A).Top
        
    End With
    
    Next A
    
    Do Until EOF(1)
        
    Input #1, elpepe1, etesech2
    
    Label1(B).Caption = elpepe1
    
    Label2(B).Caption = etesech2
    
    B = B + 1
    
    Loop
    
    Close #1
    
End Sub

Private Sub Form_Activate()
    
'    For A = 1 To 9
'
'        With Label2(A)
'
'        .Left = Label1(A).Left + 3360
'
'        .Visible = True
'
'        .Top = Label1(A).Top
'
'    Next A
    
End Sub

