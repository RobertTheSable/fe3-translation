includeonce

ORG $81cb3e
code_59:
     LDY.W #table_charnames         ; a00080
     LDA $7f4416        ; af16447f
     JSL loadMenuText   ; 2200806e
     LDX $17            ; a617
     LDY.W #table_classnames         ; a09c88
     LDA $7f4401        ; af01447f
     JSL loadMenuText   ; 2200806e
     LDX $17            ; a617
     LDY #table_menuStats         ; a04eb8
     LDA #$0000         ; a90000
     JSL loadMenuText   ; 2200806e

     
ORG $81cc05
code_60:
    ; controls the horizontal offset of the Fire Emblem Sprite
    ; that appears next to marth's name in some chapters
    ; this was increased from 05 -> 07 since marth's name was longer
    ; in english than in Japanese
     LDA #$07           ; a907

ORG $81cc28
code_61:
    ; since the fire emblem sprite is on the sprite layer,
    ; a whole in the menu background layer needs to be created to see it.
    ; this value controls the horizontal position of that hole.
     LDA #$07           ; a907

ORG $81ce65
code_62:
     LDY #table_menuStats         ; a04eb8
     LDA #$01           ; a901
     JSL loadMenuText   ; 2200806e

ORG $81cf39
code_63:
     LDY #table_menuStats         ; a04eb8
     JSL loadMenuText   ; 2200806e

ORG $81d09b
code_65:
     LDY #table_menuStats         ; a04eb8
     LDA #$0003         ; a90300
     JSL loadMenuText   ; 2200806e

ORG $81CF58
_81CF58:
    php  ; 81CF58
    sep #$20 ; 81CF59
    ldx $0C1B ; 81CF5B
    phx  ; 81CF5E
    lda #$08 ; 81CF5F
    sta $0C1B ; 81CF61
    ldx #$1009 ; stores both the veritcal and horizontal height for the menu
    stx $0C1D ; 81CF67
    jsl setupMenu ; 81CF6A
    inc $0C1B ; 81CF6E
    inc $0C1C ; 81CF71
    jsl _81D5A8 ; 81CF74
    ldx $15 ; 81CF78
; ORG $81cf7a
; code_64:
    LDY #table_menuStats
    LDA #$02
    JSL loadMenuText 
    lda $0C1B ; 81CF83
    clc  ; 81CF86
    adc #$04 ; 81CF87
    sta $0C1B ; 81CF89
    rep #$20 ; 81CF8C
    jsl _81D5A8 ; 81CF8E
    ldx $15 ; 81CF92
    lda $7F4409 ; 81CF94
    jsr $CFEF ; 81CF98
    txa  ; 81CF9B
    clc  ; 81CF9C
    adc #$007A ; 81CF9D
    tax  ; 81CFA0
    lda $7F440A ; 81CFA1
    jsr $CFEF ; 81CFA5
    txa  ; 81CFA8
    clc  ; 81CFA9
    adc #$007A ; 81CFAA
    tax  ; 81CFAD
    lda $7F440B ; 81CFAE
    jsr $CFEF ; 81CFB2
    txa  ; 81CFB5
    clc  ; 81CFB6
    adc #$007A ; 81CFB7
    tax  ; 81CFBA
    lda $7F440E ; 81CFBB
    jsr $CFEF ; 81CFBF
    txa  ; 81CFC2
    clc  ; 81CFC3
    adc #$007A ; 81CFC4
    tax  ; 81CFC7
    lda $7F440F ; 81CFC8
    jsr $CFEF ; 81CFCC
    txa  ; 81CFCF
    clc  ; 81CFD0
    adc #$007A ; 81CFD1
    tax  ; 81CFD4
    lda $7F440C ; 81CFD5
    jsr $CFEF ; 81CFD9
    txa  ; 81CFDC
    clc  ; 81CFDD
    adc #$007A ; 81CFDE
    tax  ; 81CFE1
    lda $7F440D ; 81CFE2
    jsr $CFEF ; 81CFE6
    plx  ; 81CFE9
    stx $0C1B ; 81CFEA
    plp  ; 81CFED
    rtl ; 81CFEE

; seems to be a generic menu frame setup function
ORG $81D4EE
setupMenu:
    php
    lda $0C1D ; 81D4EF
    dec A ; 81D4F2
    sta $0C1D ; 81D4F3
    lda $0C1E ; 81D4F6
    dec A ; 81D4F9
    sta $0C1E ; 81D4FA
    jsl _81D5A8 ; 81D4FD
    rep #$30 ; 81D501
    ldx $15 ; 81D503
    lda $0C1F ; 81D505
    sta $7E3000,X ; 81D508
    inx  ; 81D50C
    inx  ; 81D50D
    lda $0C1D ; 81D50E
    and #$00FF ; 81D511
    dec A ; 81D514
    tay  ; 81D515
-:
    lda $0C21 ; 81D516
    sta $7E3000,X ; 81D519
    inx  ; 81D51D
    inx  ; 81D51E
    dey  ; 81D51F
    bne - ; 81D520
    lda $0C23 ; 81D522
    sta $7E3000,X ; 81D525
    lda $15 ; 81D529
    clc  ; 81D52B
    adc #$0040 ; 81D52C
    tax  ; 81D52F
    sta $25 ; 81D530
    lda $0C1E ; 81D532
    and #$00FF ; 81D535
    dec A ; 81D538
    sta $27 ; 81D539
--:
    lda $0C25 ; 81D53B
    sta $7E3000,X ; 81D53E
    inx  ; 81D542
    inx  ; 81D543
    lda $0C1D ; 81D544
    and #$00FF ; 81D547
    dec A ; 81D54A
    tay  ; 81D54B
-:
    lda $0C27 ; 81D54C
    sta $7E3000,X ; 81D54F
    inx  ; 81D553
    inx  ; 81D554
    dey  ; 81D555
    bne - ; 81D556
    lda $0C29 ; 81D558
    sta $7E3000,X ; 81D55B
    lda $25 ; 81D55F
    clc  ; 81D561
    adc #$0040 ; 81D562
    tax  ; 81D565
    sta $25 ; 81D566
    lda $27 ; 81D568
    dec A ; 81D56A
    sta $27 ; 81D56B
    cmp #$0000 ; 81D56D
    bne -- ; 81D570
    lda $0C2B ; 81D572
    sta $7E3000,X ; 81D575
    inx  ; 81D579
    inx  ; 81D57A
    lda $0C1D ; 81D57B
    and #$00FF ; 81D57E
    dec A ; 81D581
    tay  ; 81D582
-:
    lda $0C2D ; 81D583
    sta $7E3000,X ; 81D586
    inx  ; 81D58A
    inx  ; 81D58B
    dey  ; 81D58C
    bne - ; 81D58D
    lda $0C2F ; 81D58F
    sta $7E3000,X ; 81D592
    sep #$20 ; 81D596
    lda $0C1D ; 81D598
    inc A ; 81D59B
    sta $0C1D ; 81D59C
    lda $0C1E ; 81D59F
    inc A ; 81D5A2
    sta $0C1E ; 81D5A3
    plp  ; 81D5A6
    rtl  ; 81D5A7
_81D5A8:
    php  ; 81D5A8
    sep #$20 ; 81D5A9
    lda $0C1C ; 81D5AB
    bne + ; 81D5AE
    stz $15 ; 81D5B0
    stz $16 ; 81D5B2
    bra ._D5CE ; 81D5B4
+:
    xba  ; 81D5B6
    lda #$40 ; 81D5B7
    rep #$20 ; 81D5B9
    sta $004202 ; 81D5BB
    nop  ; 81D5BF
    nop  ; 81D5C0
    nop  ; 81D5C1
    lda $004216 ; 81D5C2
    sep #$20 ; 81D5C6
    rep #$20 ; 81D5C8
    sta $15 ; 81D5CA
    sep #$20 ; 81D5CC
._D5CE:
    lda $0C1B ; 81D5CE
    beq .exit ; 81D5D1
    asl A ; 81D5D3
    clc  ; 81D5D4
    adc $15 ; 81D5D5
    sta $15 ; 81D5D7
    lda $16 ; 81D5D9
    adc #$00 ; 81D5DB
    sta $16 ; 81D5DD
.exit:
    plp  ; 81D5DF
    rtl ; 81D5E0
