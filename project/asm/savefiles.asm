includeonce

!textCodeZero = $A0
!textCodeOne = $A1
!textCodeTwo = $A2

ORG $848639
code_89:
     ; originally all worldmap summaries were in the same bank
     ; but in all TLs they needed to be in separate banks
     ; so the algorithm needed to e rpointed + expanded
     ; to allow for 3-byte addresses
     JSL code_113       ; 22808305
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     NOP            ; ea
     
; these adjust the leftmost position that gets overwritten when copying or erasing files
;  on the save menu.
; for the translation, 0x20 needed to be added to each to correctly overrite the save menu
;  and not other stuff in ram.
; slot 1:
ORG $84BF58
    ldx #$0020 ; original value 0
; slot two:
ORG $84BF6F
    ldx #$0054 ; original value $34
; slot three:
ORG $84BF86
    ldx #$0088 ; original value $68
    
ORG $84BFA7
; most of this is unchanged from vanilla
; but I've added it for better documentation
setupSaveFileName:
    php  ; 84BFA7
    rep #$30 ; 84BFA8
    ldy $27 ; 84BFAA
    cpy #$0000 ; 84BFAC
    beq + ; 84BFAF
    ; only executed when erasing or copying files
    ; sets up an argument for $C0C5
    phx  ; 84BFB1
+:
    pha  ; 84BFB2
    lda #$7F00 ; 84BFB3
    sta $01 ; 84BFB6
    lda #$F200 ; 84BFB8
    sta $00 ; 84BFBB
    %loadSaveMenuAddress(saveMenu_B_C_)
    sta $03 ; 84BFC5
    jsl copyTextToBuffer ; 84BFC7
    pla  ; 84BFCB
    sep #$20 ; 84BFCC
    clc  ; 84BFCE
    adc.b #!textCodeZero ; 84BFCF
    sta $7FF200 ; 84BFD1
    lda $1436 ; 84BFD5
    bne .notEmpty ; 84BFD8
    brl .loadEmptyFileAddress ; 84BFDA
.notEmpty:
    cmp #$15 ; 84BFDD
    bpl .book2 ; 84BFDF
    lda.b #!textCodeOne ; 84BFE1
    bra .notBook2 ; 84BFE3
.book2:
    lda.b #!textCodeTwo ; 84BFE5
.notBook2:
    sta $7FF207 ; 84BFE7
    lda $1436 ; 84BFEB
    cmp #$29 ; 84BFEE
    beq .loadSaveMenu_F1 ; 84BFF0
    cmp #$2A ; 84BFF2
    beq .loadSaveMenu_F2 ; 84BFF4
    cmp #$15 ; 84BFF6
    bpl + ; 84BFF8
    bra ++ ; 84BFFA
+: ; the save file is for a book 2 non-final chapter
    sec  ; 84BFFC
    sbc #$14 ; 84BFFD
++: 
    sta $15A1 ; 84BFFF
    cmp #$0A ; 84C002
    bpl .chapter10Plus ; 84C004
    clc  ; 84C006
    adc.b #!textCodeZero ; 84C007
    sta $7FF20E ; 84C009
    brl .branchToJump ; 84C00D
.chapter10Plus:
    cmp #$14 ; 84C010
    bpl .chapter20 ; 84C012
    lda #!textCodeOne ; 84C014
    sta $7FF20D ; 84C016
    lda $15A1 ; 84C01A
    sec  ; 84C01D
    sbc #$0A ; 84C01E
    clc  ; 84C020
    adc.b #!textCodeZero ; 84C021
    sta $7FF20E ; 84C023
    bra .branchToJump ; 84C027
.chapter20:
    lda #!textCodeTwo ; 84C029
    sta $7FF20D ; 84C02B
    lda #!textCodeZero ; 84C02F
    sta $7FF20E ; 84C031
    bra .branchToJump ; 84C035
.loadSaveMenu_F1:
    rep #$20
    %loadSaveMenuAddress(saveMenu_F1)
    sta $03 ; 84C041
    lda #$7F00 ; 84C043
    sta $01 ; 84C046
    lda #$F200 ; 84C048
    sta $00 ; 84C04B
    lda $00 ; 84C04D
    clc ; 84C04F
; ORG $84c050
    ADC #$0008 ; in vanilla this value is #$000D
    sta $00 ; 84C053
    jsl copyTextToBuffer ; 84C055
    bra .branchToJump ; 84C059
.loadSaveMenu_F2:
    rep #$20 ; 84C05B
    %loadSaveMenuAddress(saveMenu_F2)
    sta $03 ; 84C065
    lda #$7F00 ; 84C067
    sta $01 ; 84C06A
    lda #$F200 ; 84C06C
    sta $00 ; 84C06F
    lda $00 ; 84C071
    clc ; 84C073
; ORG $84c074
    ADC #$0008 ; in vanilla this value is #$000D
    sta $00 ; 84C077
    jsl copyTextToBuffer ; 84C079
    bra .branchToJump ; 84C07D
.loadEmptyFileAddress:
    rep #$20 ; 84C07F
    ; in vanilla: %loadSaveMenuAddress($84C6F3)
    %loadSaveMenuAddress(saveMenu_emptyFile)
    sta $03 ; 84C089
    lda #$7F00 ; 84C08B
    sta $01 ; 84C08E
    lda #$F200 ; 84C090
    sta $00 ; 84C093
    lda $00 ; 84C095
    clc  ; 84C097
    adc #$0002 ; 84C098
    sta $00 ; 84C09B
    jsl copyTextToBuffer ; 84C09D
.branchToJump:
    rep #$20 ; 84C0A1
    lda $1436 ; 84C0A3
    jsl loadSaveTitleAddress ; 84C0A6
    lda #$7F00 ; 84C0AA
    sta $01 ; 84C0AD
    lda #$F200 ; 84C0AF
    sta $00 ; 84C0B2
    jsl $84C1D1 ; 84C0B4
    ldy $27 ; 84C0B8
    cpy #$0000 ; 84C0BA
    beq .exit ; 84C0BD
    ; only executed when erasing or copying files
    jsr setupFixedWidthText ; 84C0BF
    pla  ; 84C0C2
.exit:
    plp  ; 84C0C3
    rts ; 84C0C4
setupFixedWidthText:
    php  ; 84C0C5
    rep #$20 ; 84C0C6
    skip 4 ; 84C0C8
    ; $87B87A is the jump address in 1.1
    ; it's $87B860 in 1.0
    ; I don't know what it does yet, and I don't want to define an address for it
    ; so I'll just skip overwriting it instead
    ; jsl $87B87A
    sep #$20 ; 84C0CC
    lda $04,S ; 84C0CE
    sta $000F29 ; 84C0D0
    lda $05,S ; 84C0D4
    sta $000F2A ; 84C0D6
    rep #$20 ; 84C0DA
    lda #$2020 ; 84C0DC
    sta $0F25 ; 84C0DF
    ; controls the position of the chapter titles in the overworld summaries
    ; in vanilla this value is #$4000
    ; lowering the value shifted the displayed part of the chapter titles left.
    ; (it also seems to hide what is supposed to be the chapter number?)
; ORG $84C0E2
    lda #$3E00     ; a9003e
    sta $0F23 ; 84C0E5
    lda #$7E00 ; 84C0E8
    sta $0F21 ; 84C0EB
    lda #$3000 ; 84C0EE
    sta $0F20 ; 84C0F1
    lda $0F05 ; 84C0F4
    ora #$0008 ; 84C0F7
    sta $0F05 ; 84C0FA
    lda #$0000 ; 84C0FD
    sta $000F27 ; 84C100
    lda #$0000 ; 84C104
    sta $0F14 ; 84C107
    lda #$0000 ; 84C10A
    sta $0F12 ; 84C10D
    lda #$0001 ; 84C110
    sta $0F07 ; 84C113
    lda #shiftedBank(fixedFontWidth)
    sta $0F1A ; 84C119
    lda #(fixedFontWidth-1)
    sta $0F19 ; 84C11F
.loop:
    sep #$20 ; 84C122
    lda $7A ; 84C124
    and #$80 ; 84C126
    beq + ; 84C128
    rep #$20 ; 84C12A
    jsl $80892E ; 84C12C
    bra ++ ; 84C130
+:
    jsl $8087EA ; 84C132
++:
    skip 4  ; 84C136
    ; $87B94C is the jump address in 1.1
    ; it's $87B932 in 1.0
    ; I don't know what it does yet, and I don't want to define an address for it
    ; so I'll just skip overwriting it instead
    ; jsl $87B94C
    rep #$20 ; 84C13A
    lda $0F09 ; 84C13C
    cmp #$0000 ; 84C13F
    bne .loop ; 84C142
    plp  ; 84C144
    rts  ; 84C145
    
copyTextToBuffer = $84c1b8

ORG $84C211
loadSaveTitleAddress:
    php 
    rep #$30
    asl A
    tax 
    LDA #shiftedBank(savetitles_00) ; a90067
    sta $04
    lda.l table_savetitles,X
    sta $03
    plp 
    rtl
    
; Set the width of the box for titles on the opening of each chapter.
; chapter index 0 is only used by a debug map so the first value isn't used
ORG $84E5AF
    ; this table controls the right boundary of the title box
    ; values lower than 3 don't seem to be supported
    ; every increase moves the right boudary by 16 pixels
    ; (aka two glyphs in fixed width fonts)
    ; in rev 1.1, this data is read at $84:DD7F
    db $00, $04, $06, $06, $06, $03, $07, $05, $05, $04, $05, $05, $05, $06, $05, $06
    db $05, $06, $04, $05, $04, $07, $06, $06, $05, $06, $03, $06, $04, $06, $04, $03
    db $06, $03, $06, $05, $07, $06, $07, $06, $04, $06, $07 
    ; the final 2 chapters of the game don't have intros, 
    ; so they have no values in either table

    ; this table determines the leftmost position of the title window
    ; unlike the first table, the values here are in absolute pixels
    ; in rev 1.1, this data is read at $84:EE92
    db $00, $20, $10, $10, $10, $28, $08, $18, $18, $20, $18, $18, $18, $10, $18, $10
    db $18, $10, $20, $18, $20, $08, $10, $10, $18, $10, $28, $10, $20, $10, $20, $28
    db $10, $28, $10, $18, $08, $10, $08, $10, $20, $10, $08

ORG $84E70D
setupChapterTitleName:
    php  ; 84E70D
    rep #$30 ; 84E70E
    ldx #$00A0 ; 84E710
    jsr .setupChapterTitlePrefix ; 84E713
    sep #$20 ; 84E716
    lda $07DF ; 84E718
    rep #$20 ; 84E71B
    and #$00FF ; 84E71D
    ; replaces a jump to loadSaveTitleAddress
    jsl loadChapterTitleAddress   ; 220081ee
    lda #$7F00 ; 84E724
    sta $01 ; 84E727
    lda #$F200 ; 84E729
    sta $00 ; 84E72C
    jsl copyTextToBuffer ; 84E72E
    lda #$7F00 ; 84E732
    sta $01 ; 84E735
    lda #$F200 ; 84E737
    sta $00 ; 84E73A
    pea $00B4 ; 84E73C
    jsr setupFixedWidthText ; 84E73F
    pla  ; 84E742
    plp  ; 84E743
    rts ; 84E744
.setupChapterTitlePrefix:
    php  ; 84E745
    rep #$30 ; 84E746
    phx  ; 84E748
    lda #$7F00 ; 84E749
    sta $01 ; 84E74C
    lda #$F200 ; 84E74E
    sta $00 ; 84E751
    %loadSaveMenuAddress(saveMenu_B_C_old)
    sta $03 ; 84E75B
    jsl copyTextToBuffer ; 84E75D
    sep #$20 ; 84E761
    lda $07DF ; 84E763
    cmp #$15 ; 84E766
    bpl .book1 ; 84E768
    lda #!textCodeOne ; 84E76A
    bra .book2 ; 84E76C
.book1:
    lda #!textCodeTwo ; 84E76E
.book2:
    sta $7FF205 ; 84E770
    lda $07DF ; 84E774
    cmp #$29 ; 84E777
    beq .book2F1 ; 84E779
    lda $07DF ; 84E77B
    cmp #$2A ; 84E77E
    beq .book2F2 ; 84E780
    lda $07DF ; 84E782
    cmp #$15 ; 84E785
    bpl + ; 84E787
    bra ++ ; 84E789
+:
    sec  ; 84E78B
    sbc #$14 ; 84E78C
++:
    sta $15A1 ; 84E78E
    cmp #$0A ; 84E791
    bpl .chapter10Plus ; 84E793
    clc  ; 84E795
    adc.b #!textCodeZero ; 84E796
    sta $7FF20C ; 84E798
    brl .exit ; 84E79C
.chapter10Plus:
    cmp #$14 ; 84E79F
    bpl .chapter20 ; 84E7A1
    lda.b #!textCodeOne ; 84E7A3
    sta $7FF20B ; 84E7A5
    lda $15A1 ; 84E7A9
    sec  ; 84E7AC
    sbc #$0A ; 84E7AD
    clc  ; 84E7AF
    adc.b #!textCodeZero ; 84E7B0
    sta $7FF20C ; 84E7B2
    brl .exit ; 84E7B6
.chapter20:
    lda.b #!textCodeTwo ; 84E7B9
    sta $7FF20B ; 84E7BB
    lda.b #!textCodeZero ; 84E7BF
    sta $7FF20C ; 84E7C1
    bra .exit ; 84E7C5
.book2F1:
    rep #$20 ; 84E7C7
    ; should probably have been overwritten?
    %loadSaveMenuAddress($84C6DB)
    sta $03 ; 84E7D1
    lda #$7F00 ; 84E7D3
    sta $01 ; 84E7D6
    lda #$F200 ; 84E7D8
    sta $00 ; 84E7DB
    lda $00 ; 84E7DD
    clc  ; 84E7DF
    adc #$0009 ; 84E7E0
    sta $00 ; 84E7E3
    jsl copyTextToBuffer ; 84E7E5
    bra .exit ; 84E7E9
.book2F2:
    rep #$20 ; 84E7EB
    %loadSaveMenuAddress(saveMenu_F2)
    sta $03 ; 84E7F5
    lda #$7F00 ; 84E7F7
    sta $01 ; 84E7FA
    lda #$F200 ; 84E7FC
    sta $00 ; 84E7FF
    lda $00 ; 84E801
    clc  ; 84E803
    adc #$0009 ; 84E804
    sta $00 ; 84E807
    jsl copyTextToBuffer ; 84E809
    bra .exit ; 84E80D
.exit:
    rep #$20 ; 84E80F
    lda #$7F00 ; 84E811
    sta $01 ; 84E814
    lda #$F200 ; 84E816
    sta $00 ; 84E819
    jsr setupFixedWidthText ; 84E81B
    pla  ; 84E81E
    plp  ; 84E81F
    rts ; 84E820
     

ORG $84fae0
code_98:
     %loadSaveMenuAddress(saveMenu_resumeCh)

ORG $84fb06
code_99:
     %loadSaveMenuAddress(saveMenu_restartCh)

ORG $84fb2c
code_100:
     %loadSaveMenuAddress(saveMenu_newGame)

ORG $84fb52
code_101:
     %loadSaveMenuAddress(saveMenu_copyFile)

ORG $84fb78
code_102:
     %loadSaveMenuAddress(saveMenu_eraseFile)

ORG $84fb9e
code_103:
     %loadSaveMenuAddress(saveMenu_restartCh)

ORG $84fbc4
code_104:
     %loadSaveMenuAddress(saveMenu_newGame)

ORG $84fbea
code_105:
     %loadSaveMenuAddress(saveMenu_copyFile)

ORG $84fc10
code_106:
     %loadSaveMenuAddress(saveMenu_eraseFile)

ORG $84fc36
code_107:
     %loadSaveMenuAddress(saveMenu_newGame)

ORG $84fc5c
code_108:
     %loadSaveMenuAddress(saveMenu_newGame)

ORG $84fd89
    ; unchanged from vanilla
    %loadSaveMenuAddress(saveMenu_B_C_B_C_old)
    sta $03
    ; overrides a jump to copyTextToBuffer
    NOP            ; ea
    NOP            ; ea
    NOP            ; ea
    NOP            ; ea

ORG $84fda1
code_110:
     %loadSaveMenuAddress(saveMenu_book1Start)
     STA $03        ; 8503
     jsl copyTextToBuffer    ; 22b8c184

ORG $84FDC7
    ; unchanged from vanilla
    %loadSaveMenuAddress($84C6D0)
    sta $03
    ; overrides a jump to copyTextToBuffer
    NOP            ; ea
    NOP            ; ea
    NOP            ; ea
    NOP            ; ea

ORG $84fddf
code_112:
     %loadSaveMenuAddress(saveMenu_book2Start)
     STA $03        ; 8503
     jsl copyTextToBuffer    ; 22b8c184

ORG $858380
code_113:
     PHA                    ; 48
     ASL                    ; a0
     ADC $01,S              ; 6301
     TAX                    ; aa
     PLA                    ; 68
     LDA table_worldmap+1,X ; bf018060
     STA $000001            ; 8f010000
     LDA table_worldmap,X   ; bf008060
     STA $000000            ; 8f000000
     RTL                    ; 6b
     
ORG $ee8100
loadChapterTitleAddress:
     PHP            ; 80
     REP #$30       ; c230
     ASL            ; a0
     TAX            ; aa
     LDA #shiftedBank(ChapterTitles_00) ; a90067
     ; ^ aka lda #$E7
     STA $04        ; 8504
     LDA.L table_ChapterTitles,X  ; bf0082ee
     STA $03        ; 8503
     PLP            ; 28
     RTL            ; 6b
