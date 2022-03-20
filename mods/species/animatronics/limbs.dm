/decl/prosthetics_manufacturer/endoskeleton
	name = "Endoskeleton"
	manufacturer_name = "Fazbear Entertainment"
	modifier_string = "endoskeleton"
	desc = "This limb is extremely cheap and simplistic, with a bare steel frame and exposed parts."
	icon = 'mods/species/animatronics/icons/body.dmi'
	skintone = FALSE
	species_restricted = list(SPECIES_ANIMATRONIC)
	limb_blend = ICON_ADD
	modular_prosthetic_tier = MODULAR_BODYPART_INVALID

/decl/prosthetics_manufacturer/animatronic
	manufacturer_name = "Fazbear Entertainment"
	modifier_string = "animatronic"
	limb_blend = ICON_MULTIPLY
	skintone = FALSE
	modular_prosthetic_tier = MODULAR_BODYPART_INVALID

/decl/prosthetics_manufacturer/animatronic/on_fracture(var/obj/item/organ/external/org)
	if(org.status & ORGAN_DISFIGURED)
		org.status &= ~ORGAN_DISFIGURED
		org.status &= ~ORGAN_BROKEN
		org.robotize(/decl/prosthetics_manufacturer/endoskeleton, keep_organs = TRUE, robotize_children = FALSE)
	else
		org.disfigure("brute")
		org.update_icon()

/decl/prosthetics_manufacturer/animatronic/roxy
	name = "Roxanne Wolf"
	desc = "This robotic limb was designed for Roxanne Wolf."

/decl/prosthetics_manufacturer/animatronic/glam_freddy
	name = "Glamrock Freddy"
	desc = "This robotic limb was designed for Glamrock Freddy."
//	icon = 'mods/species/animatronics/icons/glam_freddy.dmi'
//	disfigured_icon = 'mods/species/animatronics/icons/shattered_glam_freddy.dmi'

/decl/prosthetics_manufacturer/animatronic/monty
	name = "Montgomery Gator"
	desc = "This robotic limb was designed for Montgomery Gator."

/decl/prosthetics_manufacturer/animatronic/glam_chica
	name = "Glamrock Chica"
	desc = "This robotic limb was designed for Glamrock Chica."

/decl/prosthetics_manufacturer/animatronic/freddy_fazbear
	name = "Freddy Fazbear"
	desc = "This robotic limb was designed for Freddy Fazbear."
	icon = 'mods/species/animatronics/icons/freddy_fazbear.dmi'

DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/endoskeleton, endoskeleton)

// GLAMROCK ANIMATRONICS
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/roxy, roxy)
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/glam_freddy, glam_freddy)
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/monty, monty)
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/glam_chica, glam_chica)

// CLASSIC ANIMATRONICS
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/freddy_fazbear, freddy_fazbear)