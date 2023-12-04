includeonce

; supply - list window positions
ORG $81949B
    rep #$20 ; 81:949B
    ldx #$0E02 ; 81:949D - used if the cursor is on the right
    stx $0B30 ; 81:94A0
    ldx #$0E10 ; 81:94A3 - used if the cursor is on the left
    stx $0B32 ; 81:94A6

; in-map supply window positions
ORG $81ABA2
    ldx #$0A02 ; 81:ABA2 - used if the cursor is on the right
    stx $0B30 ; 81:ABA5
    ldx #$0A10 ; 81:ABA8 - used if the cursor is on the left
    stx $0B32 ; 81:ABAB 
    
; window position for supply menu - give
ORG $81B0FC
    ldx #$0804 ; 81:B0FC
    stx $0B30 ; 81:B0FF
    stx $0B32 ; 81:B102
    
; window position for supply menu - take + discard
ORG $81B7F7
    ldx #$0B10 ; 81:B7F7
    stx $0B32 ; 81:B7FA
    
; window position for the equip menu
ORG $81C0ED
    sep #$20 ; 81:C0ED
    lda #$0E ; 81:C0EF
    xba  ; 81:C0F1
    lda $0BB5 ; 81:C0F2 - either 1 or 10,
              ; depending on the side of the side fo the screen the menu is on
    rep #$20 ; 81:C0F5
    sta $0B30 ; 81:C0F7
    sta $0B32 ; 81:C0FA

ORG $81C1C0
    rep #$20 ; 81:C1C0
    lda $0BA7 ; 81:C1C2 - value set at $81BF66
    sta $0C1B ; 81:C1C5 - store menu location
    lda #$0C0D ; 81:C1C8 - menu dimentions
    sta $0C1D ; 81:C1CB
    lda #$0000 ; 81:C1CE
    jsl selectWindowTileset ; 81:C1D1
    jsl setupMenu ; 81:C1D5
    inc $0C1B ; 81:C1D9
    inc $0C1C ; 81:C1DC
    jsl getMenuBufferPos ; 81:C1DF
    lda [$0C] ; 81:C1E3
    ldx $15 ; 81:C1E5
    ; staff use menu
    ; item use menu
; code_44:
     LDY #table_itemDescription         ; a0ae93
     JSL loadMenuText   ; 2200806e

; window positions for the trade menu
ORG $81E126
setTradeMenuDescriptionLocation:
    lda $0B1F ; 81:E126
    cmp #$02 ; 81:E129
    beq .option2 ; 81:E12B
    cmp #$01 ; 81:E12D
    beq .option1 ; 81:E12F
    ldx #$0202 ; 81:E131 - top window
    bra .storePosition ; 81:E134
.option1:
    ldx #$0E02 ; 81:E136 - bottom window
    bra .storePosition ; 81:E139
.option2:
    ldx #$0102 ; 81:E13B - used when swapping items with the supply
.storePosition:
    stx $0B30 ; 81:E13E
     
ORG $81E717
showItemDescriptionMenu:
    ; 0C1B - menu position
    php ; 81:E717
    sep #$20 ; 81:E718
    ldx $0C1B ; 81:E71A
    phx ; 81:E71D
    lda $0C04 ; 81:E71E
    pha ; 81:E721
    ; determines description window dimentions
    ; low byte is the height, high byte is the width
    ldx #$0C0D ; 81:E722
    stx $0C1D ; 81:E725
    lda #$04 ; 81:E728
    jsl selectWindowTileset ; 81:E72A
    jsl setupMenu ; 81:E72E
    lda #$28 ; 81:E732 - item type flags
             ; 0x20 - item
             ; 0x08 - staff
    sta $0C04 ; 81:E734
    lda $0B2F ; 81:E737
    jsl $819770 ; 81:E73A - checking the item type
    bcc .weapons ; 81:E73E
    inc $0C1B ; 81:E740
    inc $0C1C ; 81:E743
    jsl getMenuBufferPos ; 81:E746
    ldx $15 ; 81:E74A
;ORG $81e74c
    ; suppy menu - items
    ; trade menu - items
;code_75:
    LDY #table_itemDescription         ; a0ae93
    LDA $0b2f          ; ad2f0b
    JSL loadMenuText   ; 2200806e
    sep #$20 ; 81:E756
    pla ; 81:E758
    sta $0C04 ; 81:E759
    plx ; 81:E75C
    stx $0C1B ; 81:E75D
    plp ; 81:E760
    rtl ; 81:E761
.weapons:
    lda $0B2F ; 81:E762
    xba ; 81:E765
    lda #$0E ; 81:E766
    rep #$20 ; 81:E768
    sta $004202 ; 81:E76A
    nop ; 81:E76E
    nop ; 81:E76F
    nop ; 81:E770
    lda $004216 ; 81:E771
    sep #$20 ; 81:E775
    rep #$20 ; 81:E777
    sta $0BA7 ; 81:E779
    inc $0C1B ; 81:E77C
    inc $0C1C ; 81:E77F
    jsl getMenuBufferPos ; 81:E782
    ldx $15 ; 81:E786
    lda $15 ; 81:E788
    clc ; 81:E78A
    adc #$000C ; 81:E78B
    sta $0BA4 ; 81:E78E
    ; suppy menu - weapons
    ; trade menu - weapons
    ; equip menu
    ; attack menu
;code_76:
    LDY #table_itemDescription         ; a0ae93
    LDA #$0000         ; a90000
    JSL loadMenuText   ; 2200806e
    
; window position for shops when buying
ORG !bank87+$9310
    lda #$0D12 ; 87:9312
    sta $0B30 ; 87:9315
    sta $0B32 ; 87:9318
    
; window position for shops when selling from the supply
ORG !bank87+$9519
    lda #$0F03 ; 87:951B
    sta $0B30 ; 87:951E

; window position for shops when selling from unit inventory
ORG !bank87+$9888
    ldx #$0F03 ; 87:988A
    stx $0B30 ; 87:988D
    stx $0B32 ; 87:9890
