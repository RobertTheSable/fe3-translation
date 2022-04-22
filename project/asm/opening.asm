includeonce

!baseX = $0
!baseY = $6D
!baseY2 = $67   ; lines in the opening after position 5 or thereabouts are 
                ; offset by 6 from the usual pattern
                ; so I added a second constant for compatibility
!offsetX = 8    
!offsetY = $13

; index must be a multiple of 2 assuming sprites are 16x16 and text is 8x16
macro OpeningLine(x, y, count, index)
    db !baseX+(<x>*!offsetX), !baseY+(<y>*!offsetY), <count>>>1, ((<index>&$F0)<<1)|(<index>&$0F)
endmacro

; index must be a multiple of 2
macro OpeningLine2(x, y, count, index)
    db !baseX+(<x>*!offsetX), !baseY2+(<y>*!offsetY), <count>>>1, ((<index>&$F0)<<1)|(<index>&$0F)
endmacro

macro EmptyLine()
    %OpeningLine(0, 0, 0, 0)
endmacro


ORG $8DF9C4
; opening part 1
    %OpeningLine(6, 0, 20, 0)
    %OpeningLine(6, 1, 18, 20)
    %OpeningLine(8, 2, 14, 40)
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
; part 2
    %OpeningLine(6, 0, 24, 0)
    %OpeningLine(9, 1, 14, 24)
    %EmptyLine()
    %OpeningLine(9, 3, 14, 44)
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
; part 3
    %OpeningLine(5, 0, 22, 0)
    %OpeningLine(10, 1, 12, 24)
    %OpeningLine(11, 2, 10, 38)
    %EmptyLine()
    %OpeningLine2(7, 5, 18, 50)
    %OpeningLine2(4, 6, 24, 70)
    %OpeningLine2(8, 7, 14, 96)
    %OpeningLine2(8, 8, 16, 112)
; part 4
    %OpeningLine(8, 0, 16, 0)
    %OpeningLine(5, 1, 22, 18)
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
; part 5
    %OpeningLine(10, 0, 12, 0)
    %OpeningLine(4, 1, 24, 12)
    %OpeningLine(9, 2, 14, 38)
    %EmptyLine()
    %OpeningLine2(7, 6, 18, 54)
    %OpeningLine2(7, 7, 18, 74)
    %EmptyLine()
    %EmptyLine()
; part 6
    %OpeningLine(8, 0, 16, 0)
    %OpeningLine(8, 1, 16, 18)
    %OpeningLine(7, 2, 18, 36)
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    %EmptyLine()
    
ORG $8486b0
loadB1OpeningAddress:
    lda $07df       ; 2B for book 1 opening
    and #$00ff
    bne +
    inc a
+:
    dec a
    asl a
    tax
    lda #shiftedBank(openings_Book1OP)
    sta $01
    lda book1OpeningOffset,x
    clc
    adc #$b000
     
ORG $8df821
loadB2OpeningAddress:
    php
    rep #$30
    lda #shiftedBank(openings_Book2OP)
    sta $01
    lda.l book2OpeningOffset ; currently #$100
    clc
    adc #$b000

ORG $8dfacd
loadBankForOpeningCrawlText:
    lda #shiftedBank(crawls_00)     ;A90067
    sta $01
    lda $121E
    xba 
    dec A
    and #$00FF
    asl A
    tax 
    lda.l table_crawls,X
    
; TODO: maybe add offset table address generation to sable and remove this?
ORG $DCB000
book1OpeningOffset:
skip $2A<<1
    dw openings_Book1OP-$B000
    
ORG $dcb056
; second word overwrites the offset for the book 2 OP, no clue about the first word
; in vanilla it's a copy of the second word
    dw $0000
book2OpeningOffset:
    dw openings_Book2OP-$B000
