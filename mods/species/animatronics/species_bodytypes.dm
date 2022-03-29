/decl/bodytype/animatronic
	name =              "endoskeleton"
	icon_base =         'mods/species/animatronics/icons/body.dmi'
	bodytype_category = BODYTYPE_HUMANOID
	limb_blend =        ICON_ADD
	associated_gender = NEUTER
	var/decl/prosthetics_manufacturer/model = /decl/prosthetics_manufacturer/endoskeleton
	var/has_tail = FALSE
	var/default_hair_style = /decl/sprite_accessory/hair/bald

/decl/species/animatronic/set_default_hair(var/mob/living/carbon/human/H)
	var/decl/bodytype/animatronic/animatronic_type = H.bodytype
	if(!istype(animatronic_type))
		return ..()
	if(H.h_style != animatronic_type.default_h_style)
		H.h_style = animatronic_type.default_h_style
		. = TRUE
	if(.)
		H.update_hair()

/decl/bodytype/animatronic/roxy
	name = "Roxanne Wolf"
	model = /decl/prosthetics_manufacturer/animatronic/roxy
	associated_gender = FEMALE
	has_tail = TRUE
	default_hair_style = /decl/sprite_accessory/hair/animatronic

/decl/bodytype/animatronic/monty
	name = "Montgomery Gator"
	model = /decl/prosthetics_manufacturer/animatronic/monty
	associated_gender = MALE
	has_tail = TRUE
	// default_hair_style = /decl/sprite_accessory/hair/animatronic/monty

/decl/bodytype/animatronic/glam_freddy
	name = "Glamrock Freddy"
	model = /decl/prosthetics_manufacturer/animatronic/glam_freddy
	associated_gender = MALE

/decl/bodytype/animatronic/glam_chica
	name = "Glamrock Chica"
	model = /decl/prosthetics_manufacturer/animatronic/glam_chica
	associated_gender = FEMALE

/decl/bodytype/animatronic/freddy_fazbear
	name = "Freddy Fazbear"
	model = /decl/prosthetics_manufacturer/animatronic/freddy_fazbear
	associated_gender = MALE

/decl/bodytype/animatronic/glam_foxy
	name = "Glamrock Foxy"
	model = /decl/prosthetics_manufacturer/animatronic/glam_foxy
	associated_gender = MALE

/decl/bodytype/animatronic/glam_bonnie
	name = "Glamrock Bonnie"
	model = /decl/prosthetics_manufacturer/animatronic/glam_bonnie
	associated_gender = MALE

/decl/bodytype/animatronic/check_dismember_type_override(disintegrate)
	if(disintegrate != DISMEMBER_METHOD_EDGE)
		return null
	return ..()

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

/obj/item/organ/external/tail/animatronic
	name = "animatronic tail"
	icon_state = "tail"
	tail = "tail"

/obj/item/organ/external/tail/animatronic/get_tail_icon()
	var/decl/prosthetics_manufacturer/R = GET_DECL(model)
	return R?.get_limb_icon(src) || ..()