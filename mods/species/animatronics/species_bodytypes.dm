/decl/bodytype/animatronic
	name =              "endoskeleton"
	icon_base =         'mods/species/animatronics/icons/body.dmi'
	bodytype_category = BODYTYPE_HUMANOID
	limb_blend =        ICON_ADD
	var/decl/prosthetics_manufacturer/model = /decl/prosthetics_manufacturer/endoskeleton

/decl/bodytype/animatronic/roxy
	name = "Roxanne Wolf"
	//icon_base = 'mods/species/animatronics/icons/roxy.dmi'
//	limb_blend = ICON_MULTIPLY
	model = /decl/prosthetics_manufacturer/animatronic/roxy

/decl/bodytype/animatronic/monty
	name = "Montgomery Gator"
	//icon_base = 'mods/species/animatronics/icons/monty.dmi'
//	limb_blend = ICON_MULTIPLY
	model = /decl/prosthetics_manufacturer/animatronic/monty

/decl/bodytype/animatronic/glam_freddy
	name = "Glamrock Freddy"
//	icon_base = 'mods/species/animatronics/icons/glam_freddy.dmi'
//	limb_blend = ICON_MULTIPLY
	model = /decl/prosthetics_manufacturer/animatronic/glam_freddy

/decl/bodytype/animatronic/glam_chica
	name = "Glamrock Chica"
	//icon_base = 'mods/species/animatronics/icons/glam_chica.dmi'
//	limb_blend = ICON_MULTIPLY
	model = /decl/prosthetics_manufacturer/animatronic/glam_chica

/decl/bodytype/animatronic/freddy_fazbear
	name = "Freddy Fazbear"
//	icon_base = 'mods/species/animatronics/icons/glam_freddy.dmi'
//	limb_blend = ICON_MULTIPLY
	model = /decl/prosthetics_manufacturer/animatronic/freddy_fazbear

/decl/bodytype/animatronic/Initialize()
	equip_adjust = list(
		"[slot_head_str]" =  list(
			"[NORTH]" = list("x" =  0, "y" = 1),
			"[EAST]"  = list("x" =  0, "y" = 0),
			"[SOUTH]" = list("x" =  0, "y" = 1),
			"[WEST]"  = list("x" =  0, "y" = 0)
		)
	)
	. = ..()