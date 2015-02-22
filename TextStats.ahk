#NoTrayIcon

; берем содержимое буфера обмена
SourceString := clipboard

; Всего символов и абзацев
NumOfSymbols :=StrLen(SourceString)
NumOfP := 0
Loop, parse, SourceString, `n`r
{
	if (StrLen(A_LoopField) <> 0) {
		NumOfP += 1
	}
}

; Символов без ПРОБЕЛЬНЫХ и число слов
NumOfWords := 0
NumOfSymbolsWithoutSpaces := 0

Loop, parse, SourceString, `n`r%A_Tab%%A_Space%
{
	if (StrLen(A_LoopField) <> 0) {
		NumOfWords += 1
		NumOfSymbolsWithoutSpaces += StrLen(A_LoopField)
	}
}


; сделать разделитель тысяч
MsgBox , , Статистика текста, Символов всего - %NumOfSymbols%`nСимволов без пробелов - %NumOfSymbolsWithoutSpaces%`nСлов - %NumOfWords%`n`nАбзацев - %NumOfP%`n`n`nСайт - doitq.ru


