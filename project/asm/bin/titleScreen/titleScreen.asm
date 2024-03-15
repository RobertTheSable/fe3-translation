; The title screen elements here were created by Neill Corlett. 
; It was created for this patch: https://www.romhacking.net/translations/356/
; Please get permission from the original authors before reusing it.

; All tilescreen components are compressed FE3's standard compression.

ORG $de9359
; "Fire Emblem" / "ファイアーエムブレム" tiles
; These tiles are in 4BPP format
incbin title_tiles.bin
ORG $dea685
; "Fire Emblem" / "ファイアーエムブレム" tilemap
incbin title_tilemap.bin
ORG $def044
; "Mystery of the Emblem" / "紋章の謎" and Copyright Notice tiles
; These tiles are in 2BPP format
incbin subtitle_tiles.bin
ORG $def6ff
; "FIREEMBLEM" and Sword tiles
; These tiles are in 4BPP format
incbin sword_etc_tiles.bin 
