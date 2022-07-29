/obj/item/organ/internal/mmi_holder/controlchip
	name = "robotic personality chip"
	desc = "A four inch by four inch integrated circuit chip containing the entirety of an animatronic's mind."
	icon = 'icons/obj/modules/module_mainboard.dmi'
	icon_state = ICON_STATE_WORLD
	origin_tech = "{'engineering':3,'materials':3,'programming':4}"
	attack_verb = list("attacked", "slapped", "whacked")
	material = /decl/material/solid/metal/steel
	matter = list(
		/decl/material/solid/glass = MATTER_AMOUNT_REINFORCEMENT,
		/decl/material/solid/metal/silver = MATTER_AMOUNT_TRACE,
		/decl/material/solid/metal/gold = MATTER_AMOUNT_TRACE
	)
	organ_tag = BP_POSIBRAIN

/obj/item/mmi/digital/animatronic
	icon = 'icons/obj/modules/module_mainboard.dmi'
	icon_state = ICON_STATE_WORLD

/obj/item/organ/internal/mmi_holder/digital/do_install(mob/living/carbon/human/target, obj/item/organ/external/affected, in_place)
	if(status & ORGAN_CUT_AWAY || !(. = ..()))
		return

	if(!stored_mmi)
		stored_mmi = new /obj/item/mmi/digital/animatronic(src)
	. = ..()

// POWER CELL DESCRIPTION OVERRIDE

/obj/item/organ/internal/cell
	desc = "A small, powerful cell for use in robots."