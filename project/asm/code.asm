incsrc legacy.asm
incsrc opening.asm
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

; ORG $81A7C5
;     sep #$20
;     ldx #$0603
;     sta $0C1B
; fix long names leaving data behind when paging vertically on the unit page
ORG $81a7ce
    ; the high byte determines the nummber of vertical 8px rows to be filled in
    ; the low byte controls the number of horizontal 8px columns to be filled in
    ldx #$1408 ; original value: $1407
;     stx $0C1D

; character select highlighting
; this changes the length of the highlighting when actually selecting/desecting a unit
org $818285
    ldy #$0006

; character select highlighting
; this changes the length of text that gets de-highlighted when the select screen loads
org $81864B
    ldy #$0006

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
    
; Map battle messages (LvlUp, GotItm, Broken weapon)
ORG $82C51A
    ; LvlUp message
    db $1B, $20, $91, $20, $55, $20, $5F, $20, $34, $20, $59, $20, $DF, $20 
    db $0B, $20, $81, $20, $45, $20, $4F, $20, $24, $20, $49, $20, $CF, $20 
    ; GotItm  message
    db $16, $20, $58, $20, $5D, $20, $18, $20, $5D, $20, $56, $20, $DF, $20 
    db $06, $20, $48, $20, $4D, $20, $08, $20, $4D, $20, $46, $20, $CF, $20 
    ; Broken weapon message
    db $11, $20, $5B, $20, $58, $20, $54, $20, $3E, $20, $57, $20, $DF, $20 
    db $01, $20, $4B, $20, $48, $20, $44, $20, $2E, $20, $47, $20, $CF, $20
    
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

    
; move the remaining unit count ont he select screen left 
; so there's room for longer text
ORG $818479
    LDX #$00A6
    
; controls the position of the in-chapter menu
; code prior to the first bcs wasn't changed
; it's just here for documentations
ORG $81983A
openMenuBasedOnCusror:
    sep #$20
    lda $085E
    sec
    sbc $0860
    cmp #$08
    bcs .cursorOnRight
; the two options are used depending on which side of the screen the cursor is on 
; high byte is the  y offset, low byte is the x offset
; changing the value moves the menu in 8 pixel step
; (it's not possible to change the step size because that's just how backgrounds work)
    ldx #$0216      ; used if the cusror if on the left of the screen
                    ; original value: #$0217
                    ; needed to be shited left due to the wider menu.
    bra +
.cursorOnRight:
    ldx #$0202      ; value unchanged
+:
    stx $0C1B       ; also unchanged, and probably should not be changed
    

; These are all to do with either text highlighting in various menus, or positioning in theitem popup menu
; I accidentally deleted my notes so I forget what's what, though.

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
