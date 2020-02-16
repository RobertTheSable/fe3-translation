incsrc legacy.asm
; Translation patch fixes made by RobertOfNormandy

ORG $819847
     ; load menu, different values on either side of screen
     ; high byte = y position, low byte = x position
     ; this is the position on the right side of the screen
     ldx #$0217
     bra storeMenuPos
     ; this is the position on the left side
     ldx #$0201
storeMenuPos:
     stx $0c1b
     LDY #table_suspend     ; a0acb9

; fix unit table names
org $81a7ce
    ldx #$1408

; character select highlighting
org $818285
    ldy #$0006

; character select highlighting
org $81864B
    ldy #$0006

; fix save slot titles: add 0x20 to each 
; slot 1:
ORG $84BF58
    ldx #$0020
; slot two:
ORG $84BF6F
    ldx #$0054
; slot three:
ORG $84BF86
    ldx #$0088
    
; Map battle messages (LvlUp, GotItm, Broken weapon)
ORG $82C51A
    db $1B, $20, $91, $20, $55, $20, $5F, $20, $34, $20, $59, $20, $DF, $20 
    db $0B, $20, $81, $20, $45, $20, $4F, $20, $24, $20, $49, $20, $CF, $20 
    db $16, $20, $58, $20, $5D, $20, $18, $20, $5D, $20, $56, $20, $DF, $20 
    db $06, $20, $48, $20, $4D, $20, $08, $20, $4D, $20, $46, $20, $CF, $20 
    db $11, $20, $5B, $20, $58, $20, $54, $20, $3E, $20, $57, $20, $DF, $20 
    db $01, $20, $4B, $20, $48, $20, $44, $20, $2E, $20, $47, $20, $CF, $20
    
; Set the width of the box for titles on the opening of each chapter.
ORG $84E5B0
    db $04, $06, $06, $06, $03, $07, $05, $05, $04, $05, $05, $05, $06, $05, $06, $05 
    db $06, $04, $05, $04, $07, $06, $06, $05, $06, $03, $06, $04, $06, $04, $03, $06 
    db $03, $06, $05, $07, $06, $07, $06, $04, $06, $07, $00, $20, $10, $10, $10, $28 
    db $08, $18, $18, $20, $18, $18, $18, $10, $18, $10, $18, $10, $20, $18, $20, $08 
    db $10, $10, $18, $10, $28, $10, $20, $10, $20, $28, $10, $28, $10, $18, $08, $10 
    db $08, $10, $20, $10, $08, $08
    
; These are all to do with either text highlighting in various menus, or positioning in theitem popup menu
; I accidentally deleted my notes so I forget what's what, though.
ORG $818479
    LDX #$00A6
    
ORG $819847
    LDX #$0216
    bra skip1
    LDX #$0202
    skip1:

ORG $81A887
    ldy #$0006
    
ORG $81AF71
    ldy #$000C
    
ORG $81AF7C
    ldy #$0007
    
ORG $81AF9E
    ldy #$0005
    
ORG $81AFA6
    ldy #$0007
    
ORG $81ECB9
    ldx #$0E11

; this section is for the "item owner" in the supply list
ORG $819239
    LDY #table_charnames    ; a00080
    PLA                     ; 68
    JSL loadMenuText        ; 2200806e
    txa 
    clc 
    adc #$0000              ; move the slot number closer to the unit name to fix the number overflowing the boundary.
    tax 
    pla 
    JSL $81D6AC
    txa 
    sec 
    sbc #$0004              ; this needs to be reduced as well
    tax 
    LDY #table_itemDiscarding   ; a016cf
    LDA #$0001                  ; a90100
    JSL loadMenuText            ; 2200806e
    
ORG $81926D
    LDY #table_itemDiscarding   ; a016cf
    LDA #$0002                  ; a90200
    JSL loadMenuText            ; 2200806e
