Attribute VB_Name = "NewMacros"
Option Explicit

Sub bild25()
Attribute bild25.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.bild25"
    Dim PercentSize As Integer
    Dim oIshp As InlineShape
    Dim oshp As Shape
    
    PercentSize = 25 'InputBox("Enter percent of full size", "Resize Picture", 75)
    
    On Error Resume Next
    
    For Each oIshp In ActiveDocument.InlineShapes
        ' if the images are not resized correctly (only some of them)
        ' extract link breaking as separate loop BEFORE the scaling loop
        If Not oIshp.LinkFormat Is Nothing Then
            oIshp.LinkFormat.BreakLink
            ActiveDocument.UndoClear
        End If
        oIshp.ScaleHeight = PercentSize
        oIshp.ScaleWidth = PercentSize
    Next oIshp

    'For Each oshp In ActiveDocument.Shapes
    '    With oshp
    '        .ScaleHeight Factor:=(PercentSize / 100), RelativeToOriginalSize:=msoCTrue
    '        .ScaleWidth Factor:=(PercentSize / 100), RelativeToOriginalSize:=msoCTrue
    '    End With
    'Next oshp
End Sub
