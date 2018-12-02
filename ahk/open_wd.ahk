#SingleInstance force
#Warn

; Open a browser window with the Wikidata item for the select GND ID


; Open URL with the default browser defined in Windows

OpenURL(u) {
  WinActivate, Program Manager
  Run %u%
  return
}


; Copies the selected text to the Windows clipboard, adds it to a
; resolver URL and opens that URL

; Currently resolves to the Sqid Wikidata browser

; hotkey ctrl-shift-h 
^+h::
  Send, ^c
  url = https://tools.wmflabs.org/wikidata-todo/resolver.php?project=sqid&lang=de&prop=P227&value=%Clipboard%
  OpenURL(url)
  Return
  
