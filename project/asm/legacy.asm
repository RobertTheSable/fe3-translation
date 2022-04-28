includeonce

function shiftedBank(label) = bank(label)<<8

macro loadAddress1(addr)
    LDA #shiftedBank(<addr>)
    STA $01
    LDA #<addr>
endmacro

macro loadAddress2(addr)
    LDA #shiftedBank(<addr>)
    STA $01
    LDY #<addr>
endmacro

ORG $818071
code_0:
     LDY #table_prepMenu     ; a0d6cb
     LDA #$0000     ; a90000
     JSL loadMenuText   ; 2200806e

ORG $81845e
code_1:
     LDY #table_selectMenu     ; a0e0c4
     LDA $0b0e      ; ad0e0b
     INC A          ; 1a
     JSL loadMenuText   ; 2200806e

ORG $818485
code_2:
     LDY #table_selectMenu     ; a0e0c4
     LDA #$00       ; a900
     JSL loadMenuText   ; 2200806e

ORG $818616
code_3:
     LDY #table_charnames     ; a00080
     PLA            ; 68
     JSL code_186   ; 22008b6e
                    ; replaces a jump to $81E21F

ORG $818efd
code_4:
     LDY #table_selectMenu     ; a0e0c4
     LDA #$0005     ; a90500
     JSL loadMenuText   ; 2200806e

ORG $819625
code_8:
     LDY #table_selectMenu     ; a0e0c4
     LDA #$04       ; a904
     JSL loadMenuText   ; 2200806e

ORG $819704
code_9:
     LDY #table_itemDiscarding     ; a016cf
     LDA #$0004     ; a90400
     JSL loadMenuText   ; 2200806e

ORG $81971e
code_10:
     LDY #table_itemNames     ; a0948c
     LDA $0ba7      ; ada70b
     JSL loadMenuText   ; 2200806e
     LDY #table_itemDiscarding     ; a016cf
     LDA #$0003     ; a90300
     JSL loadMenuText   ; 2200806e

ORG $8199f9
code_12:
     LDY #table_suspend     ; a0acb9
     LDA #$0003     ; a90300
     JSL loadMenuText   ; 2200806e

ORG $819a09
code_13:
     LDY #table_statusTitles     ; a052a3
     LDA $07df      ; addf07
     JSL loadMenuText   ; 2200806e

ORG $819acf
code_14:
     LDY #table_statusObjectives     ; a0a6af
     LDA $07df      ; addf07
     JSL loadMenuText   ; 2200806e

ORG $819b09
code_15:
     LDY #table_menuEtc1     ; a05cd0
     LDA #$0013     ; a91300
     JSL loadMenuText   ; 2200806e

ORG $819b74
code_16:
     LDY #table_itemDiscarding     ; a016cf
     LDA #$0000     ; a90000
     JSL loadMenuText   ; 2200806e

ORG $819b95
code_17:
     LDY #table_itemNames     ; a0948c
     JSL loadMenuText   ; 2200806e

ORG $819c39
code_18:
     LDY #table_configMenu     ; a00cc8

ORG $819c8b
code_19:
     LDY #table_configMenu     ; a00cc8

ORG $81a2a7
code_20:
     LDY #table_unitsMenu     ; a026c4
     LDA #$0000     ; a90000
     JSL loadMenuText   ; 2200806e
     LDX #$0096     ; a29600
     LDY #table_unitsMenu     ; a026c4
    
ORG $81a2be
code_21:
     JSL loadMenuText   ; 2200806e

ORG $81a3dd
code_22:
     LDY #table_classnames     ; a09c88
     JSL loadMenuText   ; 2200806e

ORG $81a3fe
code_23:
     LDY #table_itemNames     ; a0948c
     JSL loadMenuText   ; 2200806e

ORG $81a897
code_25:
     LDY #table_itemDiscarding     ; a016cf
     JSL loadMenuText   ; 2200806e

ORG $81a8fe
code_26:
     LDY #table_suspend     ; a0acb9

ORG $81a90b
code_27:
     JSL loadMenuText   ; 2200806e

ORG $81a9d6
code_28:
     LDY #table_suspend     ; a0acb9
     LDA #$05       ; a905
     JSL loadMenuText   ; 2200806e

ORG $81aa21
code_29:
     LDY #table_suspend     ; a0acb9
     LDA #$0008     ; a90800
     JSL loadMenuText   ; 2200806e

ORG $81b2a5
code_31:
     LDY #table_itemDiscarding         ; a016cf
     LDA #$0004         ; a90400
     JSL loadMenuText   ; 2200806e

ORG $81b2bf
code_32:
     LDY #table_itemNames         ; a0948c
     PLA                ; 68
     JSL loadMenuText   ; 2200806e
     LDY #table_itemDiscarding         ; a016cf
     LDA #$0003         ; a90300
     JSL loadMenuText   ; 2200806e

ORG $81ba07
code_33:
     LDY #table_menuCommands         ; a00eb6
     LDA #$16           ; a916
     JSL loadMenuText   ; 2200806e

ORG $81ba49
code_34:
     LDY #table_menuCommands         ; a00eb6
     LDA #$17           ; a917
     JSL loadMenuText   ; 2200806e

ORG $81baa0
code_35:
; 81/BA9E:	A519    	lda $19
     LDY #table_menuCommands         ; a00eb6
     JSL loadMenuText   ; 2200806e

ORG $81bb05
code_36:
     LDY #table_itemMenu         ; a086ce
     LDA #$0004         ; a90400
     JSL loadMenuText   ; 2200806e

ORG $81BB32
code_37:
     lda $19
     and #$00FF
     LDY #table_itemMenu         ; a086ce
     JSL loadMenuText   ; 2200806e

ORG $81bb63
code_38:
     LDY #table_itemMenu         ; a086ce
     LDA #$0005         ; a90500
     JSL loadMenuText   ; 2200806e

ORG $81be9f
code_39:
     LDY #table_supply         ; a05ad8
     LDA #$0000         ; a90000
     JSL loadMenuText   ; 2200806e

ORG $81bed3
code_40:
     LDY #table_supply         ; a05ad8
     LDA #$0003         ; a90300
     JSL loadMenuText   ; 2200806e

ORG $81bf0b
code_41:
     LDY #table_supply         ; a05ad8
     LDA #$0002         ; a90200
     JSL loadMenuText   ; 2200806e

ORG $81bf52
code_42:
     LDY #table_supply         ; a05ad8
     LDA #$0001         ; a90100
     JSL loadMenuText   ; 2200806e

ORG $81c150
code_43:
     LDY #table_menuEtc1     ; a05cd0
     LDA #$000a     ; a90a00
     JSL loadMenuText   ; 2200806e

ORG $81c1e7
code_44:
     LDY #table_itemDescription         ; a0ae93
     JSL loadMenuText   ; 2200806e

ORG $81c2f5
code_45:
     LDY #table_phases         ; a0facc
     JSL loadMenuText   ; 2200806e

ORG $81c433
code_46:
     LDY #table_animMenu         ; a066cd
     LDA #$00           ; a900
     JSL loadMenuText   ; 2200806e

ORG $81c462
code_47:
     LDY #table_animMenu     ; a066cd

ORG $81c5bf
code_48:
     LDY #table_menuEtc1         ; a05cd0
     LDA #$0009         ; a90900
     JSL loadMenuText   ; 2200806e

ORG $81c5d9
code_49:
     LDY #table_charnames         ; a00080
     LDA $7f4416        ; af16447f
     JSL loadMenuText   ; 2200806e
     LDX $17            ; a617
     LDY #table_classnames          ; a09c88
     LDA $7f4401        ; af01447f
     JSL loadMenuText   ; 2200806e

ORG $81c5ff
code_50:
     LDY #table_itemNames         ; a0948c
     LDA $7f4420        ; af20447f
     JSL loadMenuText   ; 2200806e

ORG $81c698
code_51:
     LDY #table_itemNames         ; a0948c
     JSL loadMenuText   ; 2200806e

ORG $81c715
code_52:
     LDY #table_itemDiscarding         ; a016cf
     LDA #$00           ; a900
     JSL loadMenuText   ; 2200806e

ORG $81c73d
code_53:
     LDY #table_itemNames         ; a0948c
     JSL loadMenuText   ; 2200806e

ORG $81c7b5
code_54:
     LDY #table_itemDiscarding         ; a016cf
     LDA #$00           ; a900
     JSL loadMenuText   ; 2200806e

ORG $81c865
code_55:
     LDY #table_itemNames         ; a0948c
     LDA $21            ; a521
     JSL loadMenuText   ; 2200806e

ORG $81c909
code_56:
     LDY #table_menuEtc1         ; a05cd0
     LDA #$000f         ; a90f00
     JSL loadMenuText   ; 2200806e

ORG $81ca25
code_57:
     LDY #table_itemNames         ; a0948c
     JSL loadMenuText   ; 2200806e

ORG $81ca8e
code_58:
     LDY #table_itemDiscarding         ; a016cf
     LDA #$0000         ; a90000
     JSL loadMenuText   ; 2200806e

ORG $81da35
code_66:
     LDY #table_itemNames         ; a0948c
     JSL loadMenuText   ; 2200806e

ORG $81da42
code_67:
     LDY #table_menuEtc1         ; a05cd0
     JSL loadMenuText   ; 2200806e

ORG $81db33
code_68:
     LDY #table_itemDiscarding         ; a016cf
     LDA #$05           ; a905
     JSL loadMenuText   ; 2200806e

ORG $81db48
code_69:
     LDY #table_itemNames         ; a0948c
     LDA $0ba4          ; ada40b
     JSL loadMenuText   ; 2200806e

ORG $81dc5c
; 81/DC4B:	223CF683	jsr $83F63C
; 81/DC4F:	48      	pha 
; 81/DC50:	EE1B0C  	inc $0C1B
; 81/DC53:	EE1C0C  	inc $0C1C
; 81/DC56:	22A8D581	jsr $81D5A8
; 81/DC5A:	A615    	ldx $15
code_70:
     LDY #table_terrain         ; a08eb0
     PLA                ; 68
     JSL loadMenuText   ; 2200806e

ORG $81dc78
code_71:
     LDY #table_menuEtc1         ; a05cd0
     LDA #$0008         ; a90800
     JSL loadMenuText   ; 2200806e

ORG $81e2dd
code_72:
     JSL loadMenuText   ; 2200806e

ORG $81e433
code_73:
     LDY #table_supply         ; a05ad8

ORG $81e43b
code_74:
     JSL loadMenuText   ; 2200806e

ORG $81e74c
code_75:
     LDY #table_itemDescription         ; a0ae93
     LDA $0b2f          ; ad2f0b
     JSL loadMenuText   ; 2200806e

ORG $81e791
code_76:
     LDY #table_itemDescription         ; a0ae93
     LDA #$0000         ; a90000
     JSL loadMenuText   ; 2200806e

ORG $81e97e
code_77:
     LDY #table_suspend         ; a0acb9
     LDA $0bb0          ; adb00b
     JSL loadMenuText   ; 2200806e

ORG $81eabb
code_78:
     LDY #table_suspend         ; a0acb9
     LDA #$000a         ; a90a00
     JSL loadMenuText   ; 2200806e

ORG $81eb4e
code_79:
     LDY #table_suspend         ; a0acb9
     LDA #$000d         ; a90d00
     JSL loadMenuText   ; 2200806e

ORG $81ecdb
code_81:
     LDY #table_itemUsage         ; a030de

ORG $81ece6
code_82:
     JSL loadMenuText   ; 2200806e

ORG $81ed1f
code_83:
     LDY #table_itemUsage         ; a030de
     LDA #$02           ; a902
     JSL loadMenuText   ; 2200806e

ORG $81ed4d
code_84:
     LDY #table_itemUsage         ; a030de
     LDA #$0001         ; a90100
     JSL loadMenuText   ; 2200806e

ORG $81ed67
code_85:
     LDY #table_itemNames     ; a0948c
     LDA $0bb0      ; adb00b
     JSL loadMenuText   ; 2200806e

ORG $81ed96
code_86:
     LDY #table_itemUsage         ; a030de
     LDA #$00           ; a900
     JSL loadMenuText   ; 2200806e

ORG $81edab
code_87:
     LDY #table_itemNames         ; a0948c
     LDA $0bb0          ; adb00b
     JSL loadMenuText   ; 2200806e

ORG $81ee33
code_88:
     LDY #table_menuEtc1         ; a05cd0
     LDA #$0002         ; a90200
     JSL loadMenuText   ; 2200806e
     
ORG !loadChar1
;loading character names
code_114:
     LDA #shiftedBank(charnames_00)     ; a900f0
skip 8
code_115:
     LDY #table_charnames     ; a00080
skip 12
;ORG $86975e
code_116:
     JSL code_135   ; 2067ff
     NOP     ; a900f0
     NOP
skip 16
;ORG $869774
code_117:
     LDY.W #table_itemNames     ; a0948c
skip 48
;ORG $8697a7
code_118:
     LDA.W #shiftedBank(charnames_00)     ; a900f0
skip 8
;ORG $8697b2
code_119:
     LDY.W #table_charnames     ; a00080
skip 12
;ORG $8697c1
code_120:
     JSL code_135   ; 2067ff
     NOP     ; a900f0
     NOP
skip 16
;ORG $8697d7
code_121:
     LDY #table_itemNames     ; a0948c
skip 70
;ORG $869820 / $86985E
code_122:
     LDA.B #bank(classnames2_00) ; a9f0
     STA $02        ; 8502
     LDY.W #table_classnames2     ; a05e8b
     REP #$20       ; c220
     TXA            ; 8a
     RTS            ; 60
     LDA.B #bank(classnames_00) ; a9f0
     STA $02        ; 8502
     LDA $15        ; a515
     LDY.W #table_classnames      ; a09c88
skip 28
; ORG $869850
code_123:
     LDA.B #bank(classnames3_00)  ; a9f0
     STA $02        ; 8502
     LDY.W #table_classnames3     ; a01c8c
skip 6
; ORG $86985d
code_124:
     LDA.B #bank(classnames_00)  ; a9f0
     STA $02        ; 8502
     LDA $15        ; a515
     LDY.W #table_classnames     ; a09c88

ORG !loadBattleText1 ;$86b09b
code_125:
     LDA.W #shiftedBank(battleText_00) ; a90070
     STA $01        ; 8501
     LDA.W #table_battleText     ; a946e3
skip 13
;ORG $86b0b0
code_126:
     JSR code_136   ; 20a0ff
skip 7
;ORG $86b0ba
code_127:
     LDA.W #shiftedBank(charnames_00) ; a900f0
     STA $01        ; 8501
     LDA.W #table_charnames     ; a90080
skip 23
;ORG $86b0d9
code_128:
     JSR code_137   ; 20b0ff
skip 9
;ORG $86b0e5
code_129:
     LDA.W #shiftedBank(itemNames_00) ; a900f0
     STA $01        ; 8501
     LDA.W #table_itemNames     ; a9948c
skip 18
;ORG $86b0ff
code_130:
     LDA.W #shiftedBank(classnames_00) ; a900f0
     STA $01        ; 8501
     LDA.W #table_classnames     ; a99c88
skip 58
;ORG $86b141
code_131:
     LDA.W #shiftedBank(battleText_00) ; a90070
     STA $01        ; 8501
     LDA.W #table_battleText     ; a946e3
skip 80
;ORG $86b199
code_132:
     JSL code_182   ; 220087ee
     RTS            ; 60
skip 16
;ORG $86b1ae
code_133:
     RTL            ; 6b

ORG !loadClassDescriptionBank
code_134:
     LDA.W #shiftedBank(classDescription_00)     ; a90067

ORG !hook86_1
code_136:
     JSL handleBattleText ; 220086ee
     LDX $1018      ; ae1810
     RTS            ; 60

ORG !hook86_2
code_137:
     JSL code_185   ; 22008aee
     RTS            ; 60

ORG !hook86_3
code_138:
     JSR code_125      ; 209bb0
     RTL            ; 6b
     
ORG !bank87+$9379
code_139:
     LDY.W #table_shopMenu     ; a09aca
     LDA #$0000     ; a90000
     JSL loadMenuText   ; 2200806e
skip 726
;ORG $879659
code_140:
     LDY.W #table_shopMenu     ; a09aca
     PLA            ; 68
     INC A          ; 1a
     JSL loadMenuText   ; 2200806e

ORG !bank87+$998e
code_141:
     LDY.W #table_menuEtc1     ; a05cd0
     LDA #$0001     ; a90100
     JSL loadMenuText   ; 2200806e
skip 260
;ORG $879a9c
code_142:
     LDY.W #table_menuEtc1     ; a05cd0
     LDA #$0017     ; a91700
     JSL loadMenuText   ; 2200806e
skip 25
;ORG $879abf
code_143:
     LDY.W #table_menuEtc1     ; a05cd0
     LDA #$0018     ; a91800
     JSL loadMenuText   ; 2200806e

; 87/9F12:	08      	php 
; 87/9F13:	C220    	rep #$20
; 87/9F15:	A90088  	lda #$8800
; 87/9F18:	8501    	sta $01
; 87/9F1A:	AD840F  	lda $0F84
; 87/9F1D:	18      	clc 
; 87/9F1E:	690400  	adc #$0004
; 87/9F21:	A8      	tay 
; 87/9F22:	B70F    	lda [$0F],Y
; 87/9F24:	EB      	xba 
; 87/9F25:	E220    	sep #$20
; 87/9F27:	A913    	lda #$13
; 87/9F29:	C220    	rep #$20
; 87/9F2B:	8F024200	sta $004202
; 87/9F2F:	EA      	nop 
; 87/9F30:	EA      	nop 
; 87/9F31:	EA      	nop 
; 87/9F32:	AF164200	lda $004216
; 87/9F36:	E220    	sep #$20
; 87/9F38:	C220    	rep #$20
; 87/9F3A:	18      	clc 
; 87/9F3B:	696D9D  	adc #$9D6D
; 87/9F3E:	8500    	sta $00
; 87/9F40:	A00300  	ldy #$0003
; 87/9F43:	B700    	lda [$00],Y
; 87/9F45:	E220    	sep #$20
; 87/9F47:	8D810F  	sta $0F81
ORG !bank87+$9f4a
;probably all of this is for reinforcement popups
code_144:
     LDX.W #table_charnames     ; a20080
     stx $0F7D	
     lda #$08	
     sta $0F7C
;ORG $879f55
code_145:
     LDX.W #table_menuEtc1     ; a25cd0
     stx $0F7F
     lda #$11
     sta $0F82
     lda #$80
     sta $0F83
     ldx #$0001
     stx $0F86
     rep #$20
;ORG $879f6d
code_146:
     LDA.W #shiftedBank(charnames_00)     ; a900f0
     sta $01
     lda $0F81
     and #$00FF
     asl A
     tax
;ORG $879f7a
code_147:
     LDA table_charnames,X  ; bf0080f0
; 87/9F7E:	8500    	sta $00
; 87/9F80:	2201B187	jsr $87B101
; 87/9F84:	28      	plp 
; 87/9F85:	60      	rts 

ORG !bank87+$a1b5 ; $87a1b5
code_148:
     LDY.W #table_prepMenu2        ; a068cc
     JSL loadMenuText   ; 2200806e

ORG !bank87+$a48a  ;$87a48a
code_149:
     JSL code_180   ; 2200856e
     NOP            ; ea
     NOP            ; ea

ORG !bank87+$a674
code_150:
     LDX.W #table_charnames     ; a20080

ORG !bank87+$a6ae
code_151:
     LDA table_charnames,X  ; bf0080f0

     ;lda #$00
ORG !loadMenu_Item
code_152:
     LDY.W #table_menuEtc1     ; a05cd0
     JSL loadMenuText   ; 2200806e
     LDX #$0A0D     ; probably a coordinate
skip 9
;ORG $87ae44
code_153:
     LDY.W #table_itemNames     ; a0948c
     LDA $0bb0      ; adb00b
     JSL loadMenuText   ; 2200806e
     LDX #$0A0B     ; probably a coordinate

ORG !hook87_1
code_154:
     JSL loadMenuText   ; 2200806e
skip 24
;ORG $87b179
code_155:
     JSL loadMenuText   ; 2200806e

ORG !hiddenTreasurePopup
code_156:
     LDY.W #table_itemUsage     ; a030de
     LDA #$0e       ; a90e
     JSL loadMenuText   ; 2200806e

ORG !hook87_2
     JSL code_187   ; 2200fef0
     NOP            ; ea
     NOP            ; ea

ORG !loadStorageText
     lda.w #shiftedBank(table_storage)
     sta $01
     lda $0F4B
     asl A
     clc 
     adc.w #table_storage
     sta $00
     lda [$00]
     sta $00
     JSL code_184   ; 220089ee
     RTS            ; 60

ORG $8dd6aa
bin_14:
; ??? - appears to change text from 607 to 608
     db $a8

ORG $8ec667
; no idea, but introduced in quirino's patch.
bin_22:
     db $1b

ORG $969150
hereAreTheRecordTexts:
     SBC $67ed,Y    ; f9ed67
loadB1RecordsText:
     %loadAddress1(endings_warOfDarknessRecords)
     STA $00        ; 8500
     RTS            ; 60
loadB2RecordsText:
     %loadAddress1(endings_warOfHeroesRecords)
     STA $00        ; 8500
     RTS            ; 60
loadB2EDText:
     %loadAddress1(endings_Book2ED)
     STA $00        ; 8500
     RTS            ; 60

ORG $969b59
code_160:
     JSR loadB2EDText      ; 206991
     NOP            ; ea
     NOP            ; ea

ORG $969b69
code_161:
     JSR loadB2RecordsText      ; 205e91
     NOP            ; ea
     NOP            ; ea

ORG $969b79
code_162:
     JSR loadB1RecordsText      ; 205391
     NOP            ; ea
     NOP            ; ea


ORG $96da49
code_166:
     LDA.W #endings_timePasses     ; a990b9
     sta $00
     jsr loadBook12TransitionText

ORG $96dac2
code_167:
     LDA.W #endings_book2WarOfHeroes    ; a970b9
     sta $00
     jsr loadBook12TransitionText

ORG $96dd58
; "personal records" text
code_168:
     LDA.W #endings_PersonalRecords     ; a9b0b9
     sta $00
     jsr loadPersonalRecordsText

ORG $96ddce
; load "met" text
code_169:
     LDA.W #endings_Met     ; a950b9
     sta $00
     ldy #$000E

ORG $96DDED
; load "fell" text
     lda.w #endings_Fallen
     sta $00
     ldy #$000D


; 96/E0B7:	AF15B996	lda $96B915
; 96/E0BB:	8703    	sta [$03]
; 96/E0BD:	E603    	inc $03
; 96/E0BF:	AF16B996	lda $96B916
; 96/E0C3:	8703    	sta [$03]
; 96/E0C5:	E603    	inc $03
; 96/E0C7:	AF17B996	lda $96B917
; 96/E0CB:	8703    	sta [$03]
; 96/E0CD:	E603    	inc $03
; 96/E0CF:	AF18B996	lda $96B918
; 96/E0D3:	8703    	sta [$03]
; 96/E0D5:	E603    	inc $03
; 96/E0D7:	AF19B996	lda $96B919
; 96/E0DB:	8703    	sta [$03]
; 96/E0DD:	E603    	inc $03
; 96/E0DF:	AF1AB996	lda $96B91A
; 96/E0E3:	8703    	sta [$03]
; 96/E0E5:	E603    	inc $03
; 96/E0E7:	AF1BB996	lda $96B91B
; 96/E0EB:	8703    	sta [$03]
; 96/E0ED:	E603    	inc $03
ORG $96e0ef
code_171:
     LDA.L endings_Met    ; af50b996
; 96/E0F3:	8703    	sta [$03]
; 96/E0F5:	E603    	inc $03
; 96/E0F7:	AF1DB996	lda $96B91D
; 96/E0FB:	8703    	sta [$03]

; these are probably for:
; book 1 ending
; book 2 bad ending
; book 2 good ending
; but I'm too lazy to check which is for which.
; it shouldn't matter since they jump to the same place anyway
ORG $96df8b
     JSL loadCharacterEnding    ; 220080ff

ORG $96e18d
     JSL loadCharacterEnding    ; 220080ff

ORG $96e1a4
     JSL loadCharacterEnding    ; 220080ff

ORG $96E449
loadBook12TransitionText:
    php
    sep #$30
    lda.b #bank(endings_book2WarOfHeroes)
    sta $02

ORG $96E488
loadPersonalRecordsText:
     php
     sep #$30
     lda.b #bank(endings_PersonalRecords)
     sta $02
     rep #$30

ORG $96ef73
; load address for ending history.
endingAddr:
     LDA #endings_Book2History     ; a986ef
     sta $00
     jsr loadEndingBank

ORG $96f774
loadEndingBank:
     php 
     sep #$30
     LDA.B #bank(endings_Book2History)       ; a967
     sta $02
     rep #$30
     
 
ORG $dcf958
; padding end zeroes for the book 1 OP
bin_723:
     db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
     db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
     db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
     db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
     db $00, $00, $00, $00, $00, $00, $00
     
ORG $E1F66B
; no idea what this is for, probably not important, but keeping it for now so things match up
    db $02
ORG $E6AEB7
    db $02

ORG $ee8000
loadMenuText:
     PHP            ; 80
     REP #$20       ; c220
     PHA            ; 48
     ; this needs to be changed if menu text gets put somewhere else
     LDA #$f000     ; a900f0
     STA $01        ; 8501
     STY $00        ; 8400
     PLA            ; 68
     AND #$00ff     ; 29ff00
     ASL            ; a0
     CLC            ; 18
     ADC $00        ; 6500
     STA $00        ; 8500
     LDA [$00]      ; a700
     STA $00        ; 8500
     STX $17        ; 8617
     LDA #$7e00     ; a9007e
     STA $04        ; 8504
     LDA #$3000     ; a90030
     CLC            ; 18
     ADC $17        ; 6517
     STA $03        ; 8503
     LDY #$0000     ; a00000
.loop:
     LDA [$00],Y    ; b700
     CMP #$fffd     ; c9fdff
     BEQ .newline     ; f02b
     CMP #$fffe     ; c9feff
     BEQ .halfnewline ; f038
     CMP #$ffff     ; c9ffff
     BEQ .terminate ; f045
     PHY            ; 5a
     ASL            ; a0
     ASL            ; a0
     TAX            ; aa
     LDA $8b9af8,X  ; bff89a8b
     STA [$03]      ; 8703
     LDA $8b9afa,X  ; bffa9a8b
     CMP #$ffff     ; c9ffff
     BEQ .halfHeight ; f005
     LDY #$0040     ; a04000
     STA [$03],Y    ; 9703
.halfHeight:
     PLY            ; 7a
     INY            ; c8
     INY            ; c8
     INC $03        ; e603
     INC $03        ; e603
     BRA .loop      ; 80ce
.newline:
     LDA $17        ; a517
     CLC            ; 18
     ADC #$0080     ; 698000
     STA $17        ; 8517
     CLC            ; 18
     ADC #$3000     ; 690030
     STA $03        ; 8503
     INY            ; c8
     INY            ; c8
     BRA .loop      ; 80bc
.halfnewline:
     LDA $17        ; a517
     CLC            ; 18
     ADC #$0040     ; 694000
     STA $17        ; 8517
     CLC            ; 18
     ADC #$3000     ; 690030
     STA $03        ; 8503
     INY            ; c8
     INY            ; c8
     BRA .loop      ; 80aa
.terminate:
     LDA $03        ; a503
     SEC            ; 38
     SBC #$3000     ; e90030
     PHA            ; 48
     DEY            ; 88
     DEY            ; 88
     LDA [$00],Y    ; b700
     ASL            ; a0
     ASL            ; a0
     TAX            ; aa
     LDA $8b9afa,X  ; bffa9a8b
     CMP #$ffff     ; c9ffff
     BNE .fullHeight ; d00a
     LDA $17        ; a517
     CLC            ; 18
     ADC #$0040     ; 694000
     STA $17        ; 8517
     BRA .exit      ; 8008
.fullHeight:
     LDA $17        ; a517
     CLC            ; 18
     ADC #$0080     ; 698000
     STA $17        ; 8517
.exit:
     PLX            ; fa
     PLP            ; 28
     RTL            ; 6b
     ; what branches to here???
     ; maybe an artifact from relocating something
     PHA            ; 48
     LDA #$8b00     ; a9008b
     STA $01        ; 8501
     PLA            ; 68
     RTL            ; 6b

ORG $ee8300
code_178:
     PHP            ; 80
     PHB            ; 8b
     LDY #$0000     ; a00000
.loop:
     LDA [$00],Y    ; b700
     CMP #$ffff     ; c9ffff
     BEQ .exit      ; f010
     CPY #$000a     ; c00a00
     BEQ $0b        ; f00b
     JSR code_179   ; 200084
     INC $03        ; e603
     INC $03        ; e603
     INY            ; c8
     INY            ; c8
     BRA .loop      ; 80e9
.exit:
     TYA            ; 98
     CLC            ; 18
     ADC $1018      ; 6d1810
     STA $1018      ; 8d1810
     PLB            ; ab
     PLP            ; 28
     RTL            ; 6b

ORG $ee8400
code_179:
     PHX            ; da
     PHY            ; 5a
     ASL            ; a0
     ASL            ; a0
     TAX            ; aa
     LDY #$0000     ; a00000
     LDA $8b9af8,X  ; bff89a8b
     AND #$c3ff     ; 29ffc3
     ORA $06        ; 5006
     STA [$03],Y    ; 9703
     LDY #$0040     ; a04000
     LDA $8b9afa,X  ; bffa9a8b
     AND #$c3ff     ; 29ffc3
     ORA $06        ; 5006
     STA [$03],Y    ; 9703
     PLY            ; 7a
     PLX            ; fa
     RTS            ; 60

ORG $ee8500
code_180:
     LDA table_arena,X   ; bf00808e
     STA $00        ; 8500
     INX            ; e8
     LDA table_arena,X   ; bf00808e
     STA $01        ; 8501
     DEX            ; ca
     RTL            ; 6b

ORG $ee8600
handleBattleText:
     SEP #$20       ; e220
     CMP #$05       ; c905
     BEQ .variableText ; f003
     REP #$20       ; c220
     RTL            ; 6b
.variableText:
     INX            ; e8
     INX            ; e8
     LDA $1db4,X    ; bdb41d
     ; address ee860e
     PHA            ; 48
     CMP #$07       ; c907
     BEQ .dmg       ; f03a
                    ; arena damage
     CMP #$09       ; c909
     BEQ .exp       ; f022
                    ; gained EXP
     CMP #$20       ; c920
     BEQ .exp       ; f01e
                    ; lost EXP?
     CMP #$0a       ; c90a
     BEQ .used      ; f01e
     CMP #$0b       ; c90b
                    ; "chanted"
     BEQ .item      ; f026
     CMP #$13       ; c913
                    ; "had a"
     BEQ .item      ; f022
     CMP #$14       ; c914
                    ; "took the"
     BEQ .item      ; f01e
     CMP #$35       ; c935
     BEQ .money     ; f016
                    ; "had X gold"
     CMP #$36       ; c936
     BEQ .money     ; f012
                    ; "took X gold"
     CMP #$2d       ; c92d
     BEQ .possesive ; f00a
     BRA .default   ; 801f
.exp:
     LDA #$40       ; a940
     BRA .storeAndExit ; 8012
.used:
     LDA #$41       ; a941
     BRA .storeAndExit ; 800e
.possesive:
     ; i.e. "Marth's" instead of "Marth"
     LDA #$43       ; a943
     BRA .storeAndExit ; 800a
.money:
     LDA #$42       ; a942
     BRA .storeAndExit ; 8006
.item:
     LDA #$1f       ; a91f
     BRA .storeAndExit  ; 8002
.dmg:
     LDA #$44       ; a944
.storeAndExit
     STA $1db4,X    ; 9db41d
     DEX            ; ca
     DEX            ; ca
     PLA            ; 68
     REP #$20       ; c220
     RTL            ; 6b
.default:
     PLA            ; 68
     LDA #$43       ; a943
     DEX            ; ca
     DEX            ; ca
     REP #$20       ; c220
     RTL            ; 6b

ORG $ee8700
code_182:
    ; battle text
     PHP            ; 80
     PHB            ; 8b
     LDY #$0000     ; a00000
.loop:
     LDA [$00],Y    ; b700
     CMP #$fffd     ; c9fdff
     BNE .newline   ; d006
     JSL code_183   ; 220088ee
     BRA .loop      ; 80f3
.newline:
     CMP #$ffff     ; c9ffff
     BEQ .exit      ; f006
     JSL !algorithm86_1    ; 22a5b186
     BRA .loop      ; 80e8
.exit:
     TYA            ; 98
     CLC            ; 18
     ADC $1018      ; 6d1810
     STA $1018      ; 8d1810
     PLB            ; ab
     PLP            ; 28
     RTL            ; 6b

ORG $ee8800
code_183:
     PHA            ; 48
     LDA $03        ; a503
     CLC            ; 18
     ADC #$0080     ; 698000
     AND #$ff80     ; 2980ff
     CLC            ; 18
     ADC #$000c     ; 690c00
     STA $03        ; 8503
     PLA            ; 68
     INY            ; c8
     INY            ; c8
     RTL            ; 6b
skip 1
code_135:
     PHP            ; 80
     PHB            ; 8b
     STY $00        ; 8400
     AND #$00ff     ; 29ff00
     ASL            ; a0
     TAY            ; a8
     LDA [$00],Y    ; b700
     STA $00        ; 8500
     SEP #$20       ; e220
     LDA #$7e       ; a97e
     STA $05        ; 8505
     REP #$20       ; c220
     TXA            ; 8a
     CLC            ; 18
     ADC #$40fe     ; 69fe40
     STA $03        ; 8503
     LDY #$0000     ; a00000
     LDA [$03],Y    ; b703
     AND #$3c00     ; 29003c
     STA $06        ; 8506
     JSL code_178   ; 2200836e
     PLB            ; ab
     PLP            ; 28
     LDA #$F000     
     ; ^ probably the highest byte for somet menu text related address
     RTL            ; 60

ORG $ee8900
code_184:
     LDA $00        ; a500
     PHA            ; 48
     LDA.W #shiftedBank(storage_00) ; a90067
     ; ^ AKA LFA #$E700
     STA $01        ; 8501
     STA $0f03      ; 8d030f
     PLA            ; 68
     STA $0f02      ; 8d020f
     RTL            ; 6b

ORG $ee8a00
code_185:
     PHX            ; da
     INC $1039      ; ee3910
     LDX $1039      ; ae3910
     LDA $1db4,X    ; bdb41d
     SEP #$20       ; e220
     CMP #$13       ; c913
     BEQ +          ; f016
     CMP #$14       ; c914
     BEQ +          ; f012
     CMP #$07       ; c907
     BEQ +          ; f00e
     CMP #$09       ; c909
     BEQ ++         ; f010
.exit:
     REP #$20       ; c220
     DEC $1039      ; ce3910
     PLX            ; fa
     LDA #$2400     ; a90024
     RTL            ; 6b
+:
     REP #$20       ; c220
     JSL code_138   ; 22c0ff86
++:
     SEP #$20       ; e220
     LDA #$1f       ; a91f
     DEC $1039      ; ce3910
     LDX $1039      ; ae3910
     STA $1db4,X    ; 9db41d
     BRA .exit      ; 80e1

ORG $ee8b00
code_186:
    ; parsing character names for the select menu
     PHP            ; 80
     REP #$20       ; c220
     PHA            ; 48
     LDA #shiftedBank(charnames_00)     ; a900f0
     ; ^ another shifted bank
     STA $01        ; 8501
     STY $00        ; 8400
     PLA            ; 68
     AND #$00ff     ; 29ff00
     ASL            ; a0
     CLC            ; 18
     ADC $00        ; 6500
     STA $00        ; 8500
     LDA [$00]      ; a700
     STA $00        ; 8500
     STX $17        ; 8617
     LDA #$7e00     ; a9007e
     STA $04        ; 8504
     LDA #$3000     ; a90030
     CLC            ; 18
     ADC $17        ; 6517
     STA $03        ; 8503
     LDY #$0000     ; a00000
.loop:
     LDA [$00],Y    ; b700
     CPY #$000c     ; c00c00
     ; ^ this limit was added in the old translation
     ; it's meant to truncate long character names
     BNE +          ; d003
code_186_weirdBranchAddress = $ee8b33
     LDA #$ffff     ; a9ffff
     ; ^ address $ee8b33 is the operand of this instruction
     ; but some instrucitons branch to it
     ; maybe a bug?
+:
     CMP #$fffd     ; c9fdff
     BEQ .newline   ; f02b
     CMP #$fffe     ; c9feff
     BEQ .halfnewline ; f038
     CMP #$ffff     ; c9ffff
     BEQ .terminate ; f045
     PHY            ; 5a
     ASL            ; a0
     ASL            ; a0
     TAX            ; aa
     LDA $8b9af8,X  ; bff89a8b
     STA [$03]      ; 8703
     LDA $8b9afa,X  ; bffa9a8b
     CMP #$ffff     ; c9ffff
     BEQ .halfHeight ; f005
     LDY #$0040     ; a04000
     STA [$03],Y    ; 9703
.halfHeight:
     PLY            ; 7a
     INY            ; c8
     INY            ; c8
     INC $03        ; e603
     INC $03        ; e603
     BRA .loop        ; 80c6
.newline:
     LDA $17        ; a517
     CLC            ; 18
     ADC #$0080     ; 698000
     STA $17        ; 8517
     CLC            ; 18
     ADC #$3000     ; 690030
     STA $03        ; 8503
     INY            ; c8
     INY            ; c8
     BRA .weirdBranchAddress ; 80bc
.halfnewline:
     LDA $17        ; a517
     CLC            ; 18
     ADC #$0040     ; 694000
     STA $17        ; 8517
     CLC            ; 18
     ADC #$3000     ; 690030
     STA $03        ; 8503
     INY            ; c8
     INY            ; c8
     BRA .weirdBranchAddress ; 80aa
.terminate:
     LDA $03        ; a503
     SEC            ; 38
     SBC #$3000     ; e90030
     PHA            ; 48
     DEY            ; 88
     DEY            ; 88
     LDA [$00],Y    ; b700
     ASL            ; a0
     ASL            ; a0
     TAX            ; aa
     LDA $8b9afa,X  ; bffa9a8b
     CMP #$ffff     ; c9ffff
     BNE .fullHeight ; d00a
     LDA $17        ; a517
     CLC            ; 18
     ADC #$0040     ; 694000
     STA $17        ; 8517
     BRA .exit      ; 8008
.fullHeight:
     LDA $17        ; a517
     CLC            ; 18
     ADC #$0080     ; 698000
     STA $17        ; 8517
.exit:
     PLX            ; fa
     PLP            ; 28
     RTL            ; 6b
     ; a mystery just like the other menu algorithm
     PHA            ; 48
     LDA #$8b00     ; a9008b
     STA $01        ; 8501
     PLA            ; 68
     RTL            ; 6b    
    
ORG $f0fe00
code_187:
     LDA $0f02      ; ad020f
     CMP #$ffff     ; c9ffff
     BNE .exit      ; d011
     LDA #$7fff     ; a9ff7f
     STA $0f02      ; 8d020f
     SEP #$20       ; e220
     LDA $0f04      ; ad040f
     INC A          ; 1a
     STA $0f04      ; 8d040f
     REP #$20       ; c220
.exit:
     INC $0f02      ; ee020f
     LDA $0f09      ; ad090f
     RTL            ; 6b

ORG $ff8000
loadCharacterEnding:
     PHB            ; 8b
     LDA.B #bank(CharacterEndings_00)       ; a9ff
     PHA            ; 48
     PLB            ; ab
     LDA ($00)      ; b200
     STA [$03]      ; 8703
     PLB            ; ab
     RTL            ; 6b

