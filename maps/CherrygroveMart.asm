CherrygroveMart_MapScriptHeader: ; 0x196808
	; trigger count
	db 0

	; callback count
	db 0
; 0x19680a

ClerkScript_0x19680a: ; 0x19680a
	loadfont
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x196817
	pokemart $0, $0000
	loadmovesprites
	end
; 0x196817

UnknownScript_0x196817: ; 0x196817
	pokemart $0, $0001
	loadmovesprites
	end
; 0x19681d

CooltrainerMScript_0x19681d: ; 0x19681d
	faceplayer
	loadfont
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x19682b
	2writetext UnknownText_0x196834
	closetext
	loadmovesprites
	end
; 0x19682b

UnknownScript_0x19682b: ; 0x19682b
	2writetext UnknownText_0x196873
	closetext
	loadmovesprites
	end
; 0x196831

YoungsterScript_0x196831: ; 0x196831
	jumptextfaceplayer UnknownText_0x1968a0
; 0x196834

UnknownText_0x196834: ; 0x196834
	text "They're fresh out"
	line "of # BALLS!"

	para "When will they get"
	line "more of them?"
	done
; 0x196873

UnknownText_0x196873: ; 0x196873
	text "# BALLS are in"
	line "stock! Now I can"
	cont "catch #MON!"
	done
; 0x1968a0

UnknownText_0x1968a0: ; 0x1968a0
	text "When I was walking"
	line "in the grass, a"

	para "bug #MON poi-"
	line "soned my #MON!"

	para "I just kept going,"
	line "but then my"
	cont "#MON fainted."

	para "You should keep an"
	line "ANTIDOTE with you."
	done
; 0x196934

CherrygroveMart_MapEventHeader: ; 0x196934
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warp_def $7, $3, 1, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, $0, 255, 255, $0, 0, ClerkScript_0x19680a, $ffff
	person_event SPRITE_COOLTRAINER_M, 10, 11, $5, $2, 255, 255, $0, 0, CooltrainerMScript_0x19681d, $ffff
	person_event SPRITE_YOUNGSTER, 9, 6, $6, $0, 255, 255, $80, 0, YoungsterScript_0x196831, $ffff
; 0x19696b

