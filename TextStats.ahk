#NoTrayIcon

; ����� ���������� ������ ������
SourceString := clipboard

; ����� �������� � �������
NumOfSymbols :=StrLen(SourceString)
NumOfP := 0
Loop, parse, SourceString, `n`r
{
	if (StrLen(A_LoopField) <> 0) {
		NumOfP += 1
	}
}

; �������� ��� ���������� � ����� ����
NumOfWords := 0
NumOfSymbolsWithoutSpaces := 0

Loop, parse, SourceString, `n`r%A_Tab%%A_Space%
{
	if (StrLen(A_LoopField) <> 0) {
		NumOfWords += 1
		NumOfSymbolsWithoutSpaces += StrLen(A_LoopField)
	}
}


; ������� ����������� �����
MsgBox , , ���������� ������, �������� ����� - %NumOfSymbols%`n�������� ��� �������� - %NumOfSymbolsWithoutSpaces%`n���� - %NumOfWords%`n`n������� - %NumOfP%`n`n`n���� - doitq.ru


