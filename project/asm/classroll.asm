includeonce

; extra tiles for the class roll (compressed)
ClassRollFontAddress = $CA9EC0
ClassRollTileset = $CAA242

ClassBassesList = $88906C

; 86CDD1 / 86CE2D
ORG !renderClassRollInfo
    lda #$2000 ; 86:CE2D
    sta $06 ; 86:CE30
    lda $075D ; 86:CE32
    jsr checkClassScrollName ; 86:CE35
    pha  ; 86:CE38
    ; stores the length of the parsed text in $19
    ; this is used to center the class name in the class roll
    jsr getLengthOfMenuTextBank86; 86:CE39
    lda #$000D ; 86:CE3C
    sec  ; 86:CE3F
    sbc $19 ; 86:CE40
    and #$FFFE ; 86:CE42
    clc  ; 86:CE45
    adc #$0084 ; 86:CE46
    tax  ; 86:CE49
    pla  ; 86:CE4A
    jsr parseMenuTextWithoutPaletteBank86 ; 86:CE4B
    sep #$20 ; 86:CE4E
    lda.b #bank(ClassBassesList) ; 86:CE50
    sta $02 ; 86:CE52
    rep #$20 ; 86:CE54
    lda.w #ClassBassesList ; 86:CE56
    sta $00 ; 86:CE59
    lda $075D ; 86:CE5B
    and #$00FF ; 86:CE5E
    sta $15 ; 86:CE61
    asl A ; 86:CE63
    asl A ; 86:CE64
    asl A ; 86:CE65
    clc  ; 86:CE66
    adc $15 ; 86:CE67
    tay  ; 86:CE69
    lda #$21C4 ; 86:CE6A
    sta $17 ; 86:CE6D
    lda [$00],Y ; 86:CE6F
    ldx #$014C ; 86:CE71
    jsr renderClassRollNumber ; 86:CE74
    iny  ; 86:CE77
    lda [$00],Y ; 86:CE78
    ldx #$01CC ; 86:CE7A
    jsr renderClassRollNumber ; 86:CE7D
    iny  ; 86:CE80
    lda [$00],Y ; 86:CE81
    ldx #$024C ; 86:CE83
    jsr renderClassRollNumber ; 86:CE86
    iny  ; 86:CE89
    lda [$00],Y ; 86:CE8A
    ldx #$02CC ; 86:CE8C
    jsr renderClassRollNumber ; 86:CE8F
    iny  ; 86:CE92
    lda [$00],Y ; 86:CE93
    ldx #$015A ; 86:CE95
    jsr renderClassRollNumber ; 86:CE98
    iny  ; 86:CE9B
    lda [$00],Y ; 86:CE9C
    ldx #$01DA ; 86:CE9E
    jsr renderClassRollNumber ; 86:CEA1
    iny  ; 86:CEA4
    lda [$00],Y ; 86:CEA5
    ldx #$02DA ; 86:CEA7
    jsr renderClassRollNumber ; 86:CEAA
    iny  ; 86:CEAD
    iny  ; 86:CEAE
    lda [$00],Y ; 86:CEAF
    ldx #$025A ; 86:CEB1
    jsr renderClassRollNumber ; 86:CEB4
    rts ; 86:CEB7
decompressAndCopyClassRollTileset:
    lda.w #shiftedBank(ClassRollTileset) ; 86:CEB8
    sta $72 ; 86:CEBB
    lda.w #ClassRollTileset ; 86:CEBD
    sta $71 ; 86:CEC0
    ; jumps to a possible wait for interrupt loop
    ; and then to the decompression algorithm
    ; jsr $f843
    skip 3
    lda #$01A4 ; 86:CEC5 - Length of data to copy
    ; algorithm continues to ;86:CEDD
    ; data is copied from $7E40FE to $7E3800
