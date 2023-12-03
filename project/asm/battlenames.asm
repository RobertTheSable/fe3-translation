includeonce

ORG !loadChar1
code_114:
    LDA #shiftedBank(charnames_00)     ; 86:9744 / 86:9782
    sta $01 ; 86:9785
    lda $0764 ; 86:9787
    ldx #$0044 ; 86:978A
    LDY.w #table_charnames ; 86:978D
    jsr parseMenuTextWithPaletteBank86 ; 86:9790
    lda $075E ; 86:9793
    jsr checkBattleName ; 86:9796
    ldx #$0054 ; 86:9799
; vanilla code:
;     jsr parseMenuTextWithPaletteBank86 ; 86:975E / 86:979C
;     lda #$8B00 ; 86:979F
; translation patch edit:
; code_116:
    JSL code_135   ; 2067ff
    NOP     ; a900f0
    NOP
    sta $01 ; 86:97A2
    lda $0760 ; 86:97A4
    and #$00FF ; 86:97A7
    cmp #$00FF ; 86:97AA
    beq + ; 86:97AD
    ldx #$00C4 ; 86:97AF
    LDY.W #table_itemNames
    jsr parseMenuTextWithPaletteBank86 ; 86:97B5
+:
    ; enemy stats
    lda $0768 ; 86:97B8
    ldx #$020A ; 86:97BB
    jsr renderBattleStats ; 86:97BE - hit rate
    lda $076A ; 86:97C1
    ldx #$024A ; 86:97C4
    jsr renderBattleStats ; 86:97C7 - attack
    lda $076C ; 86:97CA
    ldx #$0218 ; 86:97CD
    jsr renderBattleStats ; 86:97D0 - defense
    lda $076E ; 86:97D3
    ldx #$0258 ; 86:97D6
    jsr renderBattleStats ; 86:97D9 - critical rate
    lda $0772 ; 86:97DC
    ldx #$00DA ; 86:97DF
    jmp renderBattleLevel ; 86:97E2 - level

    LDA.W #shiftedBank(charnames_00) ; 8697A7 / 8697E5
    sta $01 ; 86:97E8
    lda $0763 ; 86:97EA
    ldx #$0062 ; 86:97ED
    LDY.W #table_charnames ; 86:97B2 / 86:97F0
    jsr parseMenuTextWithPaletteBank86 ; 86:97F3
    lda $075D ; 86:97F6
    jsr checkBattleName ; 86:97F9
    ldx #$0072 ; 86:97FC
; vanilla code:
;     jsr parseMenuTextWithPaletteBank86 ; 8697c1 / 86:97FF
;     lda #$8B00 ; 86:9802
; translation edit:
    JSL code_135   ; 2067ff
    NOP     ; a900f0
    NOP
    sta $01 ; 86:9805
    lda $075F ; 86:9807
    and #$00FF ; 86:980A
    cmp #$00FF ; 86:980D
    beq + ; 86:9810
    ldx #$00E2 ; 86:9812
    LDY.w #table_itemNames ; 86:9815
    jsr parseMenuTextWithPaletteBank86 ; 86:9818
+:
    ; player stats
    lda $0767 ; 86:981B
    ldx #$0228 ; 86:981E
    jsr renderBattleStats ; 86:9821 - hit rate
    lda $0769 ; 86:9824
    ldx #$0268 ; 86:9827
    jsr renderBattleStats ; 86:982A - attack
    lda $076B ; 86:982D
    ldx #$0236 ; 86:9830
    jsr renderBattleStats ; 86:9833 - defense
    lda $076D ; 86:9836
    ldx #$0276 ; 86:9839
    jsr renderBattleStats ; 86:983C - critical rate
    lda $0771 ; 86:983F
    ldx #$00F8 ; 86:9842
    jmp renderBattleLevel ; 86:9845 - level
    
; certails classes in JP have alternate names which are used in battles
ORG !checkForAltBattleName
checkBattleName:
    sep #$20 ; 86980A / 86:9848
    sta $15 ; 86:984A
    ldx #$0000 ; 86:984C
-:
    lda.l classesWithShortBattleNames,X ; 86:984F - value is the same in 1.1 and 1.0
    cmp #$FF ; 86:9853
    beq .doesNotHaveSpecialName ; 86:9855
    cmp $15 ; 86:9857
    beq .hasSpecialName ; 86:9859
    inx  ; 86:985B
    bra - ; 86:985C
    ;ORG $869820 / $86985E
; code_122:
.hasSpecialName:
    LDA.B #bank(classnames2_00) ; a9f0
    STA $02        ; 8502
    LDY.W #table_classnames2     ; a05e8b
    REP #$20       ; c220
    TXA            ; 8a
    RTS            ; 60
.doesNotHaveSpecialName:
    LDA.B #bank(classnames_00) ; a9f0
    STA $02        ; 8502
    LDA $15        ; a515
    LDY.W #table_classnames      ; a09c88
    rep #$20 ; 86:9872
    and #$00FF ; 86:9874
    rts ; 86:9877
    
checkClassScrollName:
    sep #$20 ; 86:9878
    sta $15 ; 86:987A
    ldx #$0000 ; 86:987C
-:
    lda.l classesWithAlternateOpeningNames,X ; 86:987F
    cmp #$FF ; 86:9883
    beq .doesNotHaveSpecialName ; 86:9885
    cmp $15 ; 86:9887
    beq .hasSpecialName ; 86:9889
    inx  ; 86:988B
    bra - ; 86:988C
; ORG $869850 / 86988E
; code_123:
.hasSpecialName:
    LDA.B #bank(classnames3_00)  ; a9f0
    STA $02        ; 8502
    LDY.W #table_classnames3     ; a01c8c
    sty $00 ; 86:9895
    rep #$20 ; 86:9897
    txa  ; 86:9899
    rts ; 86:989A
; ORG $86985d / 86989B
; code_124:
.doesNotHaveSpecialName:
    LDA.B #bank(classnames_00)  ; a9f0
    STA $02        ; 8502
    LDA $15        ; a515
    LDY.W #table_classnames     ; a09c88
    sty $00 ; 86:98A4
    rep #$20 ; 86:98A6
    and #$00FF ; 86:98A8
    rts ; 86:98AB
-:
    jsr + ; 86:98AC
    inx  ; 86:98AF
    inx  ; 86:98B0
+:
    lda $7E4100,X ; 86:98B1
    and #$FE00 ; 86:98B5
    ora #$00FD ; 86:98B8
    sta $7E4100,X ; 86:98BB
    rts  ; 86:98BF
renderBattleStats:
    ; hit, def, attack, crit
    and #$00FF ; 86:98C0
    cmp #$00FF ; 86:98C3
    beq - ; 86:98C6
    ldy #$0140 ; 86:98C8
    sty $101C ; 86:98CB
    ldy #$0000 ; 86:98CE
    bra + ; 86:98D1
renderBattleLevel:
    ldy #$0100 ; 86:98D3
    sty $101C ; 86:98D6
    ldy #$0001 ; 86:98D9
+:
    sty $15
    ; there's more stuff after this, 
    ; but it's not relevant for the current translation edits.

     
ORG $95D6D4
classesWithShortBattleNames:
    db $03 ; Cavalier
    db $07 ; Armor Knight
    db $09 ; Pegasus Knight
    db $0a ; Dracoknight
    db $20 ; Berserker
    db $22 ; Dark Mage
    db $25 ; Guardian (Unused)
    db $26 ; Ice Dragon
    db $2a ; Shadow Dragon
    db $ff ; data end
classesWithAlternateOpeningNames:
    db $03 ; Cavalier
    db $07 ; Armor Knight
    db $09 ; Pegasus Knight
    db $0a ; Dracoknight
    db $ff
