includeonce

; ORG $869476 / $8694B4
ORG !loadBattleTextFont
    lda $1003
    bit #$0001
    bne +
    lda #$1400
    sta $15 
    ldy $15 
    ldx #$0000
-:
    lda.l menuFontTiles,X
    sta.l $7E40FE,X
    inx
    dey
    inx
    dey
    bne -
    lda #$0400
    sta $15 
    ldy $15 
    ldx #$0000
-:
    lda.l $94a000,X
    sta.l $7E54FE,X
    inx
    dey
    inx
    dey
    bne -
    
    skip 16
+:

ORG !transformTextScript
; "metamorphasis"/transformation script.
    lda #$FE
    jsr StoreBattleScript
    lda #$FE
    jsr StoreBattleScript
    skip 3
    ;jsr $A198 ; 86:9C8A
    lda #$36 ; < script type
    jsr StoreBattleScript
    lda $21 ; < character name
    jsr StoreBattleScript ; 86:9C94
    lda #$05
    jsr StoreBattleScript
    lda $22 ; < class
    jsr StoreBattleScript
    lda #$2D ; < 's 
    jsr StoreBattleScript ; 86:9C9E
    jsr BattleScriptSR1 ; 86:9CA6
    lda #$02 ; < script type
    jsr StoreBattleScript
    lda #$2E ; < "metamorphasis"
    jsr StoreBattleScript
    jsr BattleScriptSR1
    skip 6
    ;jsr $A236 ; 86:9CB6
    ;jsr $F813 ; 86:9CB9
    rts ; 86:9CBC
    
ORG !classChangeTextScript
    lda #$02 ; 86:9CD8
    sta $05 ; 86:9CDA
    skip 6
    ;jsr $AEC3 ; 86:9CDC
    ;jmp $A1DB ; 86:9CDF
    lda #$35 ; 86:9CE2
    jsr StoreBattleScript ; 86:9CE4
    lda #$FE ; 86:9CE7
    jsr StoreBattleScript ; 86:9CE9
    lda #$37 ; 86:9CEC
    jsr StoreBattleScript ; 86:9CEE
    lda #$16 ; 86:9CF1
    jsr StoreBattleScript ; 86:9CF3
    lda #$01 ; 86:9CF6
    jsr StoreBattleScript ; 86:9CF8
    lda #$FE ; 86:9CFB
    jsr StoreBattleScript ; 86:9CFD
    lda #$FE ; 86:9D00
    jsr StoreBattleScript ; 86:9D02
    skip 3
;     jsr $A198 ; 86:9D05
    lda #$36 ; 86:9D08
    jsr StoreBattleScript ; 86:9D0A
    lda $0763 ; 86:9D0D
    jsr StoreBattleScript ; 86:9D10
    lda #$05 ; 86:9D13
    jsr StoreBattleScript ; 86:9D15
    lda $075E ; 86:9D18
    jsr StoreBattleScript ; 86:9D1B
    lda #$2D ; 86:9D1E
    jsr StoreBattleScript ; 86:9D20
    jsr BattleScriptSR1 ; 86:9D23
    lda #$02 ; 86:9D26
    jsr StoreBattleScript ; 86:9D28
    lda $078F ; 86:9D2B
    bit #$20 ; 86:9D2E
    beq + ; 86:9D30
    ; loads metamorphasis text (probably for xane)
    lda #$2E ; 86:9D32
    jsr StoreBattleScript ; 86:9D34
    bra .exit ; 86:9D37
+:
    lda #$2F ; 86:9D39
    jsr StoreBattleScript ; 86:9D3B
.exit:
    jsr BattleScriptSR1 ; 86:9D3E
    skip 3
;     jsr $F813 ; 86:9D41
    rts ; 86:9D44
    
; BattleScriptSR1 stores a timer ($A0) and then $FE
    
; ORG !loadClassChangeText
;     jsr $B0BA ; load class name
;     jsr $B08D ; load newline
;     jsr $AFF1 ; text then newline
;     jsr $B0FF ; 86:B045
; ;     jsr $B09B ; 86:B048
;     jmp $AFF1 ; 86:B04B

ORG !loadBattleText1 ;$86b09b / $86B0F7
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
skip 44
    phx
    phy
    asl
    asl
    tax 
    ldy.w #$0000
    lda.l $8B9AF8,x
    and #$C3FF ; 86:2
    ora $06 ; 86:2
    sta [$03],Y ; 86:2
    ldy #$0040
    lda.l $8B9AFA,x
    and #$C3FF ; 86:2
    ora $06 ; 86:2
    sta [$03],Y ; 86:2
    ply
    plx
    rts
;ORG $86b199/ 86b1F5
code_132:
     JSL code_182   ; 220087ee
     RTS            ; 60
skip 16
;ORG $86b1ae
code_133:
     RTL            ; 6b
     
ORG !hook86_1
code_136:
     JSL handleBattleText ; 220086ee
     LDX $1018      ; ae1810
     RTS            ; 60
     
