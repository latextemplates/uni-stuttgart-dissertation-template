Option Explicit

Sub bild25()
    Dim PercentSize As Integer
    Dim oIshp As InlineShape
    Dim oshp As Shape
    
    PercentSize = 25 'InputBox("Enter percent of full size", "Resize Picture", 75)
    
    On Error Resume Next
    
    'embedd figures
    For Each oIshp In ActiveDocument.InlineShapes
        If Not oIshp.LinkFormat Is Nothing Then
            oIshp.LinkFormat.BreakLink
            DoEvents
        End If
    Next oIshp

    DoEvents
    
    'resize figures
    Dim i As Long
    For i = 1 To ActiveDocument.InlineShapes.Count
        Set oIshp = ActiveDocument.InlineShapes.Item(i)
        oIshp.ScaleHeight = PercentSize
        'DoEvents '#try that if some shapes are not resized properly
        oIshp.ScaleWidth = PercentSize
        DoEvents
    Next i


    '# maybe also iterate over the Shapes collection?
    '# --> no effect
    'For Each oshp In ActiveDocument.Shapes
    '    With oshp
    '        .ScaleHeight Factor:=(PercentSize / 100), RelativeToOriginalSize:=msoCTrue
    '        .ScaleWidth Factor:=(PercentSize / 100), RelativeToOriginalSize:=msoCTrue
    '    End With
    'Next oshp
End Sub
