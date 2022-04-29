includeonce

ORG $81C37A
     ldx #$0101 ; top window X/Y coordinates
     stx $0C1B ; 81C37D
     stz $0C0F ; 81C380
     jsl setupCharacterSummaryWindow ; 81C383
     ldx #$0B01 ; bottom window X/Y coordinates
     stx $0C1B ; 81C38A
     jsr setupCharacterMenu ; 81C38D

; different contexts use the dynamic stats menu

ORG $81881A
; used on the unit selection screen
     ldx #$0101 ; X/Y offset
     stx $0C1B ; 81881D
     jsr saveAndSetupMenu ; 818820

ORG $81A19E
; used when opening from the unit list
     lda #$01 ; X Offset
     sta $0C1C ; 81A1A0
     lda #$01 ; Y offset
     sta $0C1B ; 81A1A5
     jsr saveAndSetupMenu ; 81A1A8

ORG $81BD25
; this is used when opening the stats menu after selecting a unit
; but only if the unit preview is on the top of the screen
     lda #$0B ; X offset
     sta $0C1C ; 81BD27
; ^ if the preview is on the bottom of the screen, the X offset is unchanged
     lda #$01 ; Y offset
     sta $0C1B ; 81BD2C
     sta $0C0F ; 81BD2F
     jsr saveAndSetupMenu ; 81BD32

ORG $81C134
     ; $0Ba7 is set at $81bf63
     ; it's always (the value of $0C1B + #$0100)
     ; (in other words, the same y coordinate as the last menu + 1)
     ldx $0BA7 ; 81C134
     stx $0C1B ; 81C137
     jsl setupEquipStatsMenu ; 81C13A
     rep #$20 ; 81C13E
     lda $0BA7 ; 81C140
     clc  ; 81C143
     adc #$0006 ; 81C144
     ; ^ controls the X offset of some menu padding
     ; that gets added to the eqiup window
     sta $0C1B ; 81C147
     jsl _81D5A8
     ldx $15
; code_43:
     LDY #table_menuEtc1 ; 81c150
     LDA #$000a
     JSL loadMenuText

ORG $81CACF
setupCharacterSummaryWindow:
     php  ; 81CACF
     sep #$20 ; 81CAD0
     stz $0C16 ; 81CAD2
     lda #$7F ; 81CAD5
     sta $0E ; 81CAD7
     ldx #$4420 ; 81CAD9
     stx $0C ; 81CADC
     stz $5C ; 81CADE
     ldx #$0000 ; 81CAE0
     stx $5E ; 81CAE3
     rep #$20 ; 81CAE5
     lda #$0000 ; 81CAE7
     plp  ; 81CAEA
     php  ; 81CAEB
     sep #$20 ; 81CAEC
     pha  ; 81CAEE
     ldx #$7F00 ; 81CAEF
     stx $0D ; 81CAF2
     and #$FF ; 81CAF4
     bne + ; 81CAF6
     ldx #$4420 ; 81CAF8
     bra ++ ; 81CAFB
+:
     ldx #$4428 ; 81CAFD
++:
     stx $0C ; 81CB00
     stz $5C ; 81CB02
     ldx #$0000 ; 81CB04
     stx $5E ; 81CB07
     pla  ; 81CB09
     plp  ; 81CB0A
     php  ; 81CB0B
     rep #$20 ; 81CB0C
     pha  ; 81CB0E
     lda #$0000 ; 81CB0F
     jsl selectWindowTileset ; 81CB12
     pla  ; 81CB16
     plp  ; 81CB17
     php  ; 81CB18
     sep #$20 ; 81CB19
     pha  ; 81CB1B
     rep #$20 ; 81CB1C
     lda $0C1B ; 81CB1E
     clc  ; 81CB21
     adc #$010F ; 81CB22
     sta $0C05 ; 81CB25
     lda #$0A1E ; Y/X size of the window
     sta $0C1D ; 81CB2B
     jsl setupMenu ; 81CB2E
     inc $0C1B ; 81CB32
     inc $0C1C ; 81CB35
     jsl _81D5A8 ; 81CB38
     ldx $15 ; 81CB3C
; ORG $81cb3e
; code_59:
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
     ; the next two changes are part of this same routine
     
ORG $81cc05
code_60:
    ; controls the horizontal offset of the Fire Emblem Sprite
    ; that appears next to marth's name in some chapters
    ; this was increased from 05 -> 07 since marth's name was longer
    ; in english than in Japanese
     LDA #$07

ORG $81cc28
code_61:
    ; since the fire emblem sprite is on the sprite layer,
    ; a whole in the menu background layer needs to be created to see it.
    ; this value controls the horizontal position of that hole.
     LDA #$07
     ; the routine continues until 81CC5A
     ; just before the exit there is a jump to $81C8E3
     ; which draws the weapon window


ORG $81C7D6
setupInventoryWindow:
; draw a window for either the player's weapons or items
; the value in $0C can be either $7F4420 or $7F4428
     php  ; 81C7D6
     sep #$20 ; 81C7D7
     lsr A ; 81C7D9
     bcs + ; 81C7DA
     lda #$E0 ; 81C7DC
     bra ++ ; 81C7DE
+:
     lda #$E8 ; 81C7E0
++:
     sta $1F ; 81C7E2
     lda $0C1B ; 81C7E4
     clc  ; 81C7E7
     adc #$09 ; horizontal offset of item data
     sta $0C1B ; 81C7EA
     ldx #$03 ; horizonal size of the transparent area
              ; which is created to make item icons visible
     php  ; 81C7EF
     stx $0C1D ; 81C7F0
     lda #$01 ; 81C7F3
     jsl selectWindowTileset ; 81C7F5
     jsl setupMenu ; 81C7F9
     ; next the game re-fills the window with blank tiles
     ; (not transparent ones)
     lda $0C1B ; 81C7FD
     sec  ; 81C800
     sbc #$09 ; revert the X offset back to the left of the window
     sta $0C1B ; 81C803
     ldx #$080A ; Y/X area to fill in
     stx $0C1D ; 81C809
     lda #$02 ; 81C80C
     jsl selectWindowTileset ; 81C80E
     jsl setupMenu ; 81C812
     ; now the game fills in item-specific info
     ldy #$0000 ; 81C816
     jsr .setupItemData ; 81C819
     inc $0C1C ; 81C81C
     inc $0C1C ; 81C81F
     ldy #$0001 ; 81C822
     jsr .setupItemData ; 81C825
     inc $0C1C ; 81C828
     inc $0C1C ; 81C82B
     ldy #$0002 ; 81C82E
     jsr .setupItemData ; 81C831
     inc $0C1C ; 81C834
     inc $0C1C ; 81C837
     ldy #$0003 ; 81C83A
     jsr .setupItemData ; 81C83D
     plp  ; 81C840
     rtl  ; 81C841
.setupItemData:


ORG $81CE09
setupCharacterMenu:
     php  ; 81CE09
     rep #$20 ; 81CE0A
     bra + ; 81CE0C
saveAndSetupMenu:
     php  ; 81CE0E
     rep #$20 ; 81CE0F
     lda $0C1C ; 81CE11
     and #$00FF ; 81CE14
     tax  ; 81CE17
     ldy #$0000 ; 81CE18
     lda #$0010 ; 81CE1B
     skip 4
     ;jsr $87A9AF ; 81CE1E
     ; ^ address differs between revisions
     ; copies A * 2^6 bytes between 7E:(X* 2^6)+3000 and 7E:(X* 2^6)+3800
     ; using code written to RAM via another routine at $81D98A
     ; probably meant to save a previous menu in case this covers it
     ldx $50 ; 81CE22
     stx $0C35 ; 81CE24
+:
     lda #$0000 ; 81CE27
     jsl selectWindowTileset ; 81CE2A
     jsl .setupDynamicStatsWindow ; 81CE2E
     jsl setupStatsWindow ; 81CE32
     jsl setupExtraStatsWindow ; 81CE36
     jsl setupItemsWindow ; 81CE3A
     plp  ; 81CE3E
     rts ; 81CE3F

.setupDynamicStatsWindow:
     php  ; 81CE40
     sep #$20 ; 81CE41
     jsl $81A5B2 ; 81CE43
     plp  ; 81CE47
setupEquipStatsMenu:
     php  ; 81CE48
     sep #$20 ; 81CE49
     ldx $0C1B ; 81CE4B
     phx  ; 81CE4E
     ldx #$1007 ; vertical and horizontal size of the window
     stx $0C1D ; 81CE52
     jsl setupMenu ; 81CE55
     inc $0C1B ; 81CE59
     inc $0C1C ; 81CE5C
     jsl _81D5A8 ; 81CE5F
     ldx $15 ; 81CE63
; ORG $81ce65
; code_62:
     LDY #table_menuStats
     LDA #$01
     JSL loadMenuText
     ldx $17 ; 81CE6E
     phx  ; 81CE70
     rep #$20 ; 81CE71
     lda $0C1B ; 81CE73
     clc  ; 81CE76
     adc #$0003 ; 81CE77
     sta $0C1B ; 81CE7A
     jsl _81D5A8 ; 81CE7D
     ldx $15 ; 81CE81
     lda $0769 ; 81CE83
     jsr $A55B ; 81CE86
     txa  ; 81CE89
     clc  ; 81CE8A
     adc #$007A ; 81CE8B
     tax  ; 81CE8E
     lda $0767 ; 81CE8F
     jsr $A55B ; 81CE92
     txa  ; 81CE95
     clc  ; 81CE96
     adc #$007A ; 81CE97
     tax  ; 81CE9A
     lda $076B ; 81CE9B
     jsr $A55B ; 81CE9E
     txa  ; 81CEA1
     clc  ; 81CEA2
     adc #$007A ; 81CEA3
     tax  ; 81CEA6
     lda $076D ; 81CEA7
     jsr $A55B ; 81CEAA
     txa  ; 81CEAD
     clc  ; 81CEAE
     adc #$007A ; 81CEAF
     tax  ; 81CEB2
     lda $0785 ; 81CEB3
     jsr $A55B ; 81CEB6
     txa  ; 81CEB9
     clc  ; 81CEBA
     adc #$007A ; 81CEBB
     tax  ; 81CEBE
     lda $075D ; 81CEBF
     jsr $A55B ; 81CEC2
     rep #$20 ; 81CEC5
     lda $7F4420 ; 81CEC7
     sta $0BB0 ; 81CECB
     lda $7F4422 ; 81CECE
     sta $0BAD ; 81CED2
     skip 4
     ; jsl $83FEBF ; 81CED5
     sep #$20 ; 81CED9
     lda #$28 ; 81CEDB
     sta $0C04 ; 81CEDD
     lda $7F4420 ; 81CEE0
     skip 4
     ; jsl $819770 ; 81CEE4
     bcs .noWeaponEquipped ; 81CEE8
     lda $7F4420
     cmp #$FF ; 81CEEE
     beq .noWeaponEquipped ; 81CEF0
     skip 4
     ; jsl $83EE68 ; 81CEF2
     ; ^differs by revision
     bcs .noWeaponEquipped ; 81CEF6
     lda #$88 ; 81CEF8
     sta $02 ; 81CEFA
     lda $7F4420 ; 81CEFC
     xba  ; 81CF00
     lda #$0E ; 81CF01
     rep #$20 ; 81CF03
     sta $004202 ; 81CF05
     nop  ; 81CF09
     nop  ; 81CF0A
     nop  ; 81CF0B
     lda $004216 ; 81CF0C
     sep #$20 ; 81CF10
     tax  ; 81CF12
     lda $88A6F6,X ; 81CF13
     rep #$20 ; 81CF17
     and #$00FF ; 81CF19
     asl A ; 81CF1C
     tax  ; 81CF1D
     lda $88A633,X ; 81CF1E
     sta $00 ; 81CF22
     sep #$20 ; 81CF24
     ldy #$0000 ; 81CF26
-:
     lda [$00],Y ; 81CF29
     cmp #$FF ; 81CF2B
     beq + ; 81CF2D
     iny  ; 81CF2F
     bra - ; 81CF30
+:
     iny  ; 81CF32
     lda [$00],Y ; 81CF33
     clc  ; 81CF35
     adc #$04 ; 81CF36
     plx ; 81CF38
; ORG $81cf39
; code_63:
     LDY #table_menuStats
     JSL loadMenuText
     phx
.noWeaponEquipped:


ORG $81CF58
setupStatsWindow:
    php  ; 81CF58
    sep #$20 ; 81CF59
    ldx $0C1B ; 81CF5B
    phx  ; 81CF5E
    lda #$08 ; horizontal offset of the window
    sta $0C1B ; 81CF61
    ldx #$1009 ; veritcal and horizontal size of the menu
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
    adc #$04    ; horizontal offset of the stat numbers
                ; from the left of the window
    sta $0C1B ; 81CF89
    rep #$20 ; 81CF8C
    jsl _81D5A8 ; 81CF8E
    ldx $15 ; 81CF92
    lda $7F4409 ; 81CF94
    jsr .calculateStatText ; 81CF98
    txa  ; 81CF9B
    clc  ; 81CF9C
    adc #$007A ; 81CF9D
    tax  ; 81CFA0
    lda $7F440A ; 81CFA1
    jsr .calculateStatText ; 81CFA5
    txa  ; 81CFA8
    clc  ; 81CFA9
    adc #$007A ; 81CFAA
    tax  ; 81CFAD
    lda $7F440B ; 81CFAE
    jsr .calculateStatText ; 81CFB2
    txa  ; 81CFB5
    clc  ; 81CFB6
    adc #$007A ; 81CFB7
    tax  ; 81CFBA
    lda $7F440E ; 81CFBB
    jsr .calculateStatText ; 81CFBF
    txa  ; 81CFC2
    clc  ; 81CFC3
    adc #$007A ; 81CFC4
    tax  ; 81CFC7
    lda $7F440F ; 81CFC8
    jsr .calculateStatText ; 81CFCC
    txa  ; 81CFCF
    clc  ; 81CFD0
    adc #$007A ; 81CFD1
    tax  ; 81CFD4
    lda $7F440C ; 81CFD5
    jsr .calculateStatText ; 81CFD9
    txa  ; 81CFDC
    clc  ; 81CFDD
    adc #$007A ; 81CFDE
    tax  ; 81CFE1
    lda $7F440D ; 81CFE2
    jsr .calculateStatText ; 81CFE6
    plx  ; 81CFE9
    stx $0C1B ; 81CFEA
    plp  ; 81CFED
    rtl ; 81CFEE
.calculateStatText:

ORG $81D00E
setupExtraStatsWindow:
; The bit of the stats menu that shows max HP/move
     php  ; 81D00E
     rep #$20 ; 81D00F
     ldx $0C1B ; 81D011
     phx  ; 81D014
     ldx #$060F     ; Y/X size of the hp/move window
     stx $0C1D ; 81D018
     lda $0C1C ; 81D01B
     and #$00FF ; 81D01E
     cmp #$0001 ; 81D021
     beq .drawAtTop ; 81D024
     ldx #$05B2 ; 81D026
     phx  ; 81D029
     ldx #$1510     ; Y/X position for the hp/move window
     stx $0C1B ; 81D02D
     jsl setupMenu ; 81D030
     ; override the left of the window so that it looks contiguous.
     ldx #$0560 ; 81D034
     lda #$20FC ; 81D037
     sta $7E3000,X ; 81D03A
     lda #$20FE ; 81D03E
     sta $7E3040,X ; 81D041
     sta $7E3080,X ; 81D045
     sta $7E30C0,X ; 81D049
     sta $7E3100,X ; 81D04D
     lda #$A0F1 ; 81D051
     sta $7E3140,X ; 81D054
     bra + ; 81D058
.drawAtTop:
     ldx #$00B2 ; 81D05A
     phx  ; 81D05D
     ldx #$0110 ; 81D05E
     stx $0C1B ; 81D061
     jsl setupMenu ; 81D064
     ; override the left of the window so that it looks contiguous.
     ldx #$0060 ; 81D068
     lda #$20F1 ; 81D06B
     sta $7E3000,X ; 81D06E
     lda #$20FE ; 81D072
     sta $7E3040,X ; 81D075
     sta $7E3080,X ; 81D079
     sta $7E30C0,X ; 81D07D
     sta $7E3100,X ; 81D081
     lda #$A0FC ; 81D085
     sta $7E3140,X ; 81D088
+:
     inc $0C1B ; 81D08C
     inc $0C1B ; 81D08F
     inc $0C1C ; 81D092
     jsl _81D5A8 ; 81D095
     ldx $15 ; 81D099
; ORG $81d09b
; code_65:
     LDY #table_menuStats         ; a04eb8
     LDA #$0003         ; a90300
     JSL loadMenuText   ; 2200806e
     plx  ; 81D0A5
     ; HP
     lda $7F4404 ; 81D0A6
     jsr $A55B ; 81D0AA
     txa  ; 81D0AD
     clc  ; 81D0AE
     adc #$007A ; 81D0AF
     tax  ; 81D0B2
     ; movement
     lda $7F4408 ; 81D0B3
     jsl $81EF69 ; 81D0B7
     jsr $A55B ; 81D0BB
     plx  ; 81D0BE
     stx $0C1B ; 81D0BF
     plp  ; 81D0C2
     rtl ; 81D0C3
setupItemsWindow:
     php  ; 81D0C4
     rep #$20 ; 81D0C5
     ldx $0C1B ; 81D0C7
     phx  ; 81D0CA
     lda $0C1C ; 81D0CB
     and #$00FF ; 81D0CE
     cmp #$0001 ; 81D0D1
     beq + ; 81D0D4
     lda #$0B11 ; 81D0D6
     sta $0C1B ; 81D0D9
     bra ++ ; 81D0DC
+:
     lda #$0711 ; 81D0DE
     sta $0C1B ; 81D0E1
++:
     lda #$0A0E ; 81D0E4
     sta $0C1D ; 81D0E7
     jsl setupMenu ; 81D0EA
     inc $0C1B ; 81D0EE
     inc $0C1C ; 81D0F1
     ldx #$7F00 ; 81D0F4
     stx $0D ; 81D0F7
     ldx #$4428 ; 81D0F9
     stx $0C ; 81D0FC
     lda #$0001 ; 81D0FE
     jsl setupInventoryWindow ; 81D101
     ldx $50 ; 81D105
     stx $52 ; 81D107
     plx  ; 81D109
     stx $0C1B ; 81D10A
     plp  ; 81D10D
     rtl ; 81D10E

ORG $81D35F
selectWindowTileset:
     php  ; 81D35F
     sep #$20 ; 81D360
     cmp #$01 ; 81D362
     beq .useTileset1 ; 81D364
     cmp #$02 ; 81D366
     beq .useTileset2 ; 81D368
     cmp #$03 ; 81D36A
     beq .useTileset3 ; 81D36C
     cmp #$04 ; 81D36E
     beq .useTileset4 ; 81D370
     ldy #$0012 ; 81D372
     ldx #$0000 ; 81D375
-:
     lda.l .tileset0,X ; 81D378
     sta $000C1F,X ; 81D37C
     inx  ; 81D380
     dey  ; 81D381
     bne - ; 81D382
     plp  ; 81D384
     rtl  ; 81D385
.useTileset1:
     ldy #$0012 ; 81D386
     ldx #$0000 ; 81D389
-:
     lda.l .tileset1,X ; 81D38C
     sta $000C1F,X ; 81D390
     inx  ; 81D394
     dey  ; 81D395
     bne - ; 81D396
     plp  ; 81D398
     rtl  ; 81D399
.useTileset2:
     ldy #$0012 ; 81D39A
     ldx #$0000 ; 81D39D
-:
     lda.l .tileset2,X ; 81D3A0
     sta $000C1F,X ; 81D3A4
     inx  ; 81D3A8
     dey  ; 81D3A9
     bne - ; 81D3AA
     plp  ; 81D3AC
     rtl  ; 81D3AD
.useTileset3:
     ldy #$0012 ; 81D3AE
     ldx #$0000 ; 81D3B1
-:
     lda.l .tileset3,X ; 81D3B4
     sta $000C1F,X ; 81D3B8
     inx  ; 81D3BC
     dey  ; 81D3BD
     bne - ; 81D3BE
     plp  ; 81D3C0
     rtl  ; 81D3C1
.useTileset4:
     ldy #$0012 ; 81D3C2
     ldx #$0000 ; 81D3C5
-:
     lda.l .tileset4,X ; 81D3C8
     sta $000C1F,X ; 81D3CC
     inx  ; 81D3D0
     dey  ; 81D3D1
     bne - ; 81D3D2
     plp  ; 81D3D4
     rtl ; 81D3D5
.tileset0:
dw $60F0, $20F1, $20F0, $60F2, $20FE, $20F2, $E0F0, $A0F1, $A0F0
.tileset1:
dw $00FF, $00FF, $00FF, $00FF, $00FF, $00FF, $00FF, $00FF, $00FF
.tileset2:
dw $20FE, $20FE, $20FE, $20FE, $20FE, $20FE, $20FE, $20FE, $20FE
.tileset3:
dw $60FB, $20F1, $20FB, $60F2, $20FE, $20F2, $E0FB, $A0F1, $A0FB
.tileset4:
dw $60DD, $A0CE, $20DD, $60CD, $20FE, $20CD, $E0DD, $20CE, $A0DD

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
