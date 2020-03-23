#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;;;;;;;;;;;;
;;; HOTKEY STRUCTURE INITIALLY FROM SOME OTHER PLACE I FOUND IT BUT I MADE MORE OF THEM AND IMPROVED IT A BIT FOR GENERAL USE
;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;; - >! = right alt key
;;; - CapsLock = capslock used
;;; some things should change based on whether or not caps is on
;;; (spanish) accents are applied through `+(letter)
;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
;;; SPANISH CHARACTERS
;;;;;;;;;;;;;;;;;;;;;;;;

;;; ACCENTED VOWELS
;¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
; tilde fix
+~::~
; á/Á
` & a::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 0193}
	}
	else{
		Send {Asc 160}
	}
return

; é/É
` & e::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 144}
	}
	else{
		Send {Asc 130}
	}
return

; í/Í
` & i::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 0205}
	}
	else
	{
		Send {Asc 161}
	}
return

; ó/Ó
` & o::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 0211}
	}
	else{
		Send {Asc 162}
	}
return

; ú/Ú
` & u::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 0218}
	}
	else{
		Send {Asc 163}
	}
return

; ü/Ü
>!u::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 154}
	}
	else{
		Send {Asc 129}
	}
return


;;; SPECIAL CONSONANTS
;¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

; ñ/Ñ
` & n::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 165}
	}
	else{
		Send {Asc 164}
	}
return

; ç/Ç
>!c::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 128}
	}
	else{
		Send {Asc 135}
	}
return


;;; OTHER SPECIAL CHARACTERS
;¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

; ¿
CapsLock & ?::
	Send {Asc 168}
return

; ¡
CapsLock & !::
	Send {Asc 173}
return

; €
>!e::
	Send {Asc 0128}
return

; º/ª
CapsLock & `::
	if (GetKeyState("CapsLock","t")=1){
		Send {U+00B0}
	}
	else{
		Send {Asc 166}
	}
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ADDITIONAL CHARACTERS
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; MATHEMATICAL CHARACTERS
;¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

; ±
CapsLock & -::
	Send {Asc 241}
return

; ÷
CapsLock & 8::
	Send {Asc 0247}
return

; ∞
>!8::
	Send {Asc 236}
return

; ∫
>!f::
	Send {U+222B}
return

; ≈
CapsLock & =::
	Send {Asc 247}
return

; ≤
CapsLock & ,::
	Send {U+2264}
return

; ≥
CapsLock & .::
	Send {U+2265}
return

; ≠
>!=::
	Send {U+2260}
return

; µ
>!m::
	Send {Asc 230}
return

; ∩
>!i::
	Send {Asc 239}
return

; √
>!r::
	Send {Asc 251}
return



; σ/Σ
>!s::
	if (GetKeyState("CapsLock","t")=1){
		Send {Asc 228}
	}
	else{
		Send {U+03C3}
	}
return

; π/∏
>!p::
	if (GetKeyState("CapsLock","t")=1){
		Send {U+220F}
	}
	else{
		Send {U+03C0}
	}
return

; λ/Λ
>!l::
	if (GetKeyState("CapsLock","t")=1){
		Send {U+039B}
	}
	else{
		Send {U+03BB}
	}
return

; α
>!a::
	Send {Asc 224}
return

; ß
>!b::
	Send {Asc 225}
return


; δ/Δ
>!d::
	if (GetKeyState("CapsLock","t")=1){
		Send {U+0394}
	}
	else{
		Send {U+03B4}
	}
return

;θ
>!t::
	Send {U+03B8}
return
;;; TYPOGRAPHIC CHARACTERS
;¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

; ↑
CapsLock & Up::
	Send {Asc 24}
return

; ↓
CapsLock & Down::
	Send {Asc 25}
return

; ←
CapsLock & Left::
	Send {Asc 27}
return

; →
CapsLock & Right::
	Send {Asc 26}
return

; «
>!,::
	Send {Asc 174}
return

; »
>!.::
	Send {Asc 175}
return

; ¯
>!-::
	Send {Asc 0175}
return

:*?:--::{U+2014}
return

:*?:^0::{U+2070}
return

:*?:^1::{U+00B9}
return

:*?:^2::{U+00B2}
return

:*?:^3::{U+00B3}
return

:*?:^4::{U+2074}
return

:*?:^5::{U+2075}
return

:*?:^6::{U+2076}
return

:*?:^7::{U+2077}
return

:*?:^8::{U+2078}
return

:*?:^9::{U+2079}
return

:*?:(subx)::{U+2093}
return

:*?:(subi)::{U+1D62}
return
