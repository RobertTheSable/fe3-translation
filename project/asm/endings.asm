includeonce

ORG $969fdc
; offsets in the text buffer where turn data should be overwritten
book1Data:
     dw $0033, $0054, $0075, $0096, $00b7, $00d8, $00f9, $011a
     dw $013b, $015c, $017d, $019e, $01bf, $01e0, $0201, $0222
     dw $0243, $0264, $0285, $02a6, $02c3
badEndingData:
     dw $0035, $0056, $0077, $0098, $00b9, $00da, $00fb, $011c
     dw $013d, $015e, $017f, $01a0, $01c1, $01e2, $0203, $0224
     dw $0245, $0266, $0287, $02a8, $02c3
goodEndingData:
     dw $0035, $0056, $0077, $0098, $00b9, $00da, $00fb, $011c
     dw $013d, $015e, $017f, $01a0, $01c1, $01e2, $0203, $0224
     dw $0245, $0266, $0287, $02a8, $02c9, $02ea, $0307


; 96/AF44:	A20000  	ldx #$0000
; 96/AF47:	A0F201  	ldy #$01F2
ORG $96af4a
loadBook2GoodTurnText:
    ; Book 2 ending Chapter Turns, good ending
    lda.l endings_Book2GoodTurns,X  ; bf08ea67
    sta $7F2000,X ; 96AF4E
    inx  ; 96AF52
    inx  ; 96AF53
    dey  ; 96AF54
    bne loadBook2GoodTurnText ; 96AF55
    lda #$007F ; 96AF57
    sta $02 ; 96AF5A
    sta $05 ; 96AF5C
    sta $08 ; 96AF5E
    sta $0B ; 96AF60
    lda #$2000 ; base offset for 1s place
    sta $00 ; 96AF65
    lda #$2001 ; base offset for 10s place
    sta $03 ; 96AF6A
    lda #$2002 ; base offset for 100s place
    sta $06 ; 96AF6F
    lda #$1FFF ; base offset for 1000s place
    sta $09 ; 96AF74
    lda #$0017 ; chapter count
    stz $15 ; 96AF79
    stz $17 ; 96AF7B
    sta $19 ; 96AF7D
    stz $1B ; 96AF7F
    ldx $17 ; 96AF81
    lda.l goodEndingData,X ; 96AF83

; 96/B068:	A20000  	ldx #$0000
; 96/B06B:	A0CC01  	ldy #$01CC
ORG $96b06e
loadBook2BadTurnText:
     ; Book 2 ending Chapter Turns, bad ending
    lda.l endings_Book2BadTurns,X  ; bf31e767
    sta $7F2000,X ; 96B072
    inx  ; 96B076
    inx  ; 96B077
    dey  ; 96B078
    bne loadBook2BadTurnText ; 96B079
    lda #$007F ; 96B07B
    sta $02 ; 96B07E
    sta $05 ; 96B080
    sta $08 ; 96B082
    sta $0B ; 96B084
    lda #$2000 ; base offset for 1s place
    sta $00 ; 96B089
    lda #$2001 ; base offset for 10s place
    sta $03 ; 96B08E
    lda #$2002 ; base offset for 100s place
    sta $06 ; 96B093
    lda #$1FFF ; base offset for 1000s place
    sta $09 ; 96B098
    lda #$0015 ; chapter count
    stz $15 ; 96B09D
    stz $17 ; 96B09F
    sta $19 ; 96B0A1
    stz $1B ; 96B0A3
    ldx $17 ; 96B0A5
    lda.l badEndingData,X ; 96B0A7

; 96/B151:	A20000  	ldx #$0000
; 96/B154:	A0BC01  	ldy #$01BC
ORG $96b157
loadBook1TurnText:
     ; Book 1 ending Chapter Turns
    LDA.L endings_Book1Turns,X  ; bf5ce46
    sta $7F2000,X ; 96B15B
    inx  ; 96B15F
    inx  ; 96B160
    dey  ; 96B161
    bne loadBook1TurnText ; 96B162
    lda #$007F ; 96B164
    sta $02 ; 96B167
    sta $05 ; 96B169
    sta $08 ; 96B16B
    sta $0B ; 96B16D
    lda #$2000 ; base offset for 1s place
    sta $00 ; 96B172
    lda #$2001 ; base offset for 10s place
    sta $03 ; 96B177
    lda #$2002 ; base offset for 100s place
    sta $06 ; 96B17C
    lda #$1FFF ; base offset for 1000s place
    sta $09 ; 96B181
    lda #$0015 ; chapter count
    stz $15 ; 96B186
    stz $17 ; 96B188
    sta $19 ; 96B18A
    stz $1B ; sum of all turns
.loop:
    ldx $17 ; 96B18E
    lda.l book1Data,X ; 96B190
    tay  ; 96B194
    ldx $15 ; 96B195
    lda $7F6520,X ; 96B197
    and #$00FF ; 96B19B
    clc  ; 96B19E
    adc $1B ; 96B19F
    sta $1B ; 96B1A1
    lda $7F6520,X ; 96B1A3
    and #$00FF ; 96B1A7
    bra .over100 ; 96B1AA
.over1000:
    ; I guess this is skipped because individual chapter turn counts
    ; can't go over 1000?
    cmp #$03E8 ; 96B1AC
    bmi .over100 ; 96B1AF
    sec  ; 96B1B1
    sbc #$03E8 ; 96B1B2
    pha  ; 96B1B5
    lda [$09],Y ; 96B1B6
    inc A ; 96B1B8
    sta [$09],Y ; 96B1B9
    pla  ; 96B1BB
    bra .over1000 ; 96B1BC
.over100:
    cmp #$0064 ; 96B1BE
    bmi .over10 ; 96B1C1
    sec  ; 96B1C3
    sbc #$0064 ; 96B1C4
    pha  ; 96B1C7
    lda [$00],Y ; 96B1C8
    inc A ; 96B1CA
    sta [$00],Y ; 96B1CB
    pla  ; 96B1CD
    bra .over100 ; 96B1CE
.over10:
    cmp #$000A ; 96B1D0
    bmi .nonZero ; 96B1D3
    sec  ; 96B1D5
    sbc #$000A ; 96B1D6
    pha  ; 96B1D9
    lda [$03],Y ; 96B1DA
    inc A ; 96B1DC
    sta [$03],Y ; 96B1DD
    pla  ; 96B1DF
    bra .over10 ; 96B1E0
.nonZero:
    cmp #$0001 ; 96B1E2
    bmi .finishedCalculating ; 96B1E5
    dec A ; 96B1E7
    pha  ; 96B1E8
    lda [$06],Y ; 96B1E9
    inc A ; 96B1EB
    sta [$06],Y ; 96B1EC
    pla  ; 96B1EE
    bra .nonZero ; 96B1EF
.finishedCalculating:
    sep #$20 ; 96B1F1
    lda $19 ; 96B1F3
    cmp #$01 ; 96B1F5
    bne .chaptersRemaining ; 96B1F7
    lda [$09],Y ; 96B1F9
    cmp #$A0 ; 96B1FB
    bne ._B210 ; 96B1FD
    lda #$C4 ; 96B1FF
    sta [$09],Y ; 96B201
.chaptersRemaining:
    lda [$00],Y ; 96B203
    cmp #$A0 ; 96B205
    bne ._B210 ; 96B207
    lda #$C4 ; 96B209
             ; C4 = fixed width space
    sta [$00],Y ; 96B20B
    iny  ; 96B20D
    bra .chaptersRemaining ; 96B20E
._B210:
    rep #$20 ; 96B210
    inc $17 ; 96B212
    inc $17 ; 96B214
    inc $15 ; 96B216
    dec $19 ; 96B218
    lda $19 ; 96B21A
    cmp #$0001 ; 96B21C
    beq + ; 96B21F
    cmp #$0000 ; 96B221
    ; b2 good ending has an extra case, probably to combine F2,3,4 turns
    beq .exit ; 96B224
    jmp .loop ; 96B226
.exit:
    plp  ; 96B229
    rts  ; 96B22A
+:
    ldx $17 ; 96B22B
    lda.l book1Data,X ; 96B22D
    tay  ; 96B231
    lda $1B ; 96B232
    jmp .over1000 ; 96B234
