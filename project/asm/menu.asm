includeonce

ORG $83883f
; baked-in VRAM transfer for the menu tiles
db $02              ; transfer type
dl menuFontTiles    ; source
dw $2000            ; size
db $80              ; dma address increment mode
dw $5000            ; destination
; cursors, the fire emblem, and a few other random sprites
db $02              ; transfer type
dl $94A800          ; source
dw $1000            ; size
db $80              ; dma address increment mode
dw $7800            ; destination
