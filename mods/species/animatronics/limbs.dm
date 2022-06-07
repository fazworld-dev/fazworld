/decl/prosthetics_manufacturer/endoskeleton
	name = "Endoskeleton"
	manufacturer_name = "Fazbear Entertainment"
	modifier_string = "endoskeleton"
	desc = "This limb is extremely cheap and simplistic, with a bare steel frame and exposed parts."
	icon = 'mods/species/animatronics/icons/body.dmi'
	skintone = FALSE
	species_restricted = list(SPECIES_ANIMATRONIC)
	limb_blend = ICON_MULTIPLY
	modular_prosthetic_tier = MODULAR_BODYPART_INVALID

/decl/prosthetics_manufacturer/animatronic
	manufacturer_name = "Fazbear Entertainment"
	modifier_string = "animatronic"
	limb_blend = ICON_MULTIPLY
	skintone = FALSE
	hardiness = 0.5
	modular_prosthetic_tier = MODULAR_BODYPART_INVALID
	abstract_type = /decl/prosthetics_manufacturer/animatronic

/decl/prosthetics_manufacturer/animatronic/on_fracture(var/obj/item/organ/external/org)
	playsound(org.loc, "fracture", 100, 1, -2)
	if(org.status & ORGAN_DISFIGURED)
		org.owner.visible_message(SPAN_DANGER("\The [org.owner]'s [org.name] shatters and falls apart!"),	\
			SPAN_DANGER("Your [org.name] shatters and falls apart!"),	\
			SPAN_DANGER("You hear a sickening crunch."))
		org.rejuvenate()
		org.robotize(/decl/prosthetics_manufacturer/endoskeleton, keep_organs = TRUE, robotize_children = FALSE)
	else
		org.disfigure("brute")
		org.update_icon()

/decl/prosthetics_manufacturer/animatronic/roxy
	name = "Roxanne Wolf"
	desc = "This robotic limb was designed for Roxanne Wolf."
	icon = 'mods/species/animatronics/icons/roxanne_wolf.dmi'

/decl/prosthetics_manufacturer/animatronic/glam_freddy
	name = "Glamrock Freddy"
	desc = "This robotic limb was designed for Glamrock Freddy."
	icon = 'mods/species/animatronics/icons/glamrock_freddy.dmi'
//	disfigured_icon = 'mods/species/animatronics/icons/shattered_glamrock_freddy.dmi'

/decl/prosthetics_manufacturer/animatronic/monty
	name = "Montgomery Gator"
	desc = "This robotic limb was designed for Montgomery Gator."
	icon = 'mods/species/animatronics/icons/montgomery_gator.dmi'

/decl/prosthetics_manufacturer/animatronic/glam_chica
	name = "Glamrock Chica"
	desc = "This robotic limb was designed for Glamrock Chica."
	icon = 'mods/species/animatronics/icons/glamrock_chica.dmi'

/decl/prosthetics_manufacturer/animatronic/freddy_fazbear
	name = "Freddy Fazbear"
	desc = "This robotic limb was designed for Freddy Fazbear."
	icon = 'mods/species/animatronics/icons/freddy_fazbear.dmi'

// Non-canon
/decl/prosthetics_manufacturer/animatronic/glam_bonnie
	name = "Glamrock Bonnie"
	desc = "This robotic limb was designed for Glamrock Bonnie."
	icon = 'mods/species/animatronics/icons/glamrock_bonnie.dmi'

/decl/prosthetics_manufacturer/animatronic/glam_foxy
	name = "Glamrock Foxy"
	desc = "This robotic limb was designed for Glamrock Foxy."
	icon = 'mods/species/animatronics/icons/glamrock_foxy.dmi'

DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/endoskeleton, endoskeleton)

// GLAMROCK ANIMATRONICS
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/roxy, roxy)
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/glam_freddy, glam_freddy)
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/monty, monty)
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/glam_chica, glam_chica)

// NON-CANON ANIMATRONICS
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/glam_bonnie, glam_bonnie)
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/glam_foxy, glam_foxy)

// CLASSIC ANIMATRONICS
DEFINE_ROBOLIMB_DESIGNS(/decl/prosthetics_manufacturer/animatronic/freddy_fazbear, freddy_fazbear)