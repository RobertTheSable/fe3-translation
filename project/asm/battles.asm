includeonce

QueueDMATransfer = $808EAD
DMATransferBuffer = $7E40FE

; this is jumped to from two locations
; $86CB5E - batle scenes
; $86CB95 - not sure what it's for, but it uses the alternate lnger transfer

; ORG $869476 / $8694B4
ORG !loadBattleTextFont
loadBattleTextFont:
    lda $1003 ; 86:94B4
    bit #$0001 ; 86:94B7
    bne .classRoll ; 86:94BA
    lda #$1400 ; 86:94BC - length of tiles to copy
    sta $15 ; 86:94BF
    ldy $15 ; 86:94C1
    ldx #$0000 ; 86:94C3
-:
    lda.l menuFontTiles,X ; 86:94C6
    sta.l DMATransferBuffer,X ; 86:94CA
    inx ; 86:94CE
    dey ; 86:94CF
    inx ; 86:94D0
    dey ; 86:94D1
    bne - ; 86:94D2
    lda #$0400 ; 86:94D4 - length of tiles to copy
    sta $15 ; 86:94D7
    ldy $15 ; 86:94D9
    ldx #$0000 ; 86:94DB
-:
    lda.l menuFontTiles+$2000,X ; 86:94DE
    sta.l DMATransferBuffer+$1400,X ; 86:94E2
    inx ; 86:94E6
    dey ; 86:94E7
    inx ; 86:94E8
    dey ; 86:94E9
    bne - ; 86:94EA
    lda.w #shiftedBank(.battleFontDMATransfer) ; 86:94EC
    sta $01 ; 86:94EF
    lda.w #.battleFontDMATransfer ; 86:94F1 - $9509 / $9547
    sta $00 ; 86:94F4
    jsl QueueDMATransfer ; 86:94F6
    bra .exit ; 86:94FA
.classRoll:
    lda #$1600 ; 86:94FC - length of tiles to copy
    sta $15 ; 86:94FF
    ldy $15 ; 86:9501
    ldx #$0000 ; 86:9503
-:
    lda.l menuFontTiles,X ; 86:9506
    sta.l DMATransferBuffer,X ; 86:950A
    inx ; 86:950E
    dey ; 86:950F
    inx ; 86:9510
    dey ; 86:9511
    bne - ; 86:9512
    sep #$20 ; 86:9514
    lda.b #bank(ClassRollFontAddress) ; 86:9516
    sta $73 ; 86:9518
    rep #$20 ; 86:951A
    lda.w #ClassRollFontAddress ; 86:951C
    sta $71 ; 86:951F
    lda #$1800 ; 86:9521 - VRAM Destination Address
    sta $76 ; 86:9524
    jsl $808F18 ; 86:9526 - Decompression function
    lda.w  #shiftedBank(.classRollFontDMATransfer) ; 86:952A
    sta $01 ; 86:952D
    lda.w #.classRollFontDMATransfer ; 86:952F - $9512 / $9550
    sta $00 ; 86:9532
    jsl QueueDMATransfer ; 86:9534
.exit
    rts ; 86:9538
    ; this area holds two blocks for palette DMA transfers
     skip 14
.battleFontDMATransfer:
    db $02                  ; Transfer type
    dl DMATransferBuffer    ; DMA source address
    dw $1800                ; DMA Transfer Length
    db $80                  ; DMA Transfer Address Increment Mode
    dw $1000                ; DMA Destination Address
.classRollFontDMATransfer:
    db $02
    dl DMATransferBuffer
    dw $1e00
    db $80
    dw $4000


ORG !transformTextScript
transformTextScript:
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
;     jsr $B09B ; 86:B048
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
    phx ; 86:B1D1
    phy
    asl
    asl
    tax 
    ldy.w #$0000 ; 86:B1D6
    lda.l MenuTextTileset,x ; 86:B1D9 - menu text tileset
    and #$C3FF ; 86:B1DD
    ora $06 ; 86:B1E0
    sta [$03],Y ; 86:B1E2
    ldy #$0040
    lda.l MenuTextTileset+2,x ; 86:B1E7
    and #$C3FF ; 86:B1EB
    ora $06 ; 86:B1EE
    sta [$03],Y ; 86:B1F0
    ply
    plx
    rts ; 86:B1F4
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
     
