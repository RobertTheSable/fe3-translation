includeonce

ORG !loadBattleText1 ;$86b09b
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
    phx
    phy
    asl
    asl
    tax 
    ldy.w #$0000
    lda.l $8B9AF8,x
    and #$C3FF ; 86:2
    ora $06 ; 86:2
    sta [$03],Y ; 86:2
    ldy #$0040
    lda.l $8B9AFA,x
    and #$C3FF ; 86:2
    ora $06 ; 86:2
    sta [$03],Y ; 86:2
    ply
    plx
    rts
;ORG $86b199/ 86b1F5
code_132:
     JSL code_182   ; 220087ee
     RTS            ; 60
skip 16
;ORG $86b1ae
code_133:
     RTL            ; 6b
