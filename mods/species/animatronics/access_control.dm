// ID 'card'
/obj/item/card/id/animatronic
	name = "animatronic access controller"
	icon_state = "robot_base"
	desc = "A slender, complex chip of circuitry that provides animatronics with access to various ID-keyed doors."

/obj/item/card/id/animatronic/on_update_icon()
	return

/obj/item/card/id/animatronic/prevent_tracking()
	return TRUE

/obj/item/card/id/animatronic/attack_self(mob/user)
	return

/obj/item/card/id/animatronic/show()
	return

// ID implant/organ/interface device.
/obj/item/organ/internal/access_controller
	name = "access controller"
	desc = "An active RFID tag that broadcasts its access information as if it was an ID card."
	icon = 'icons/obj/card.dmi'
	icon_state = "robot_base"
	parent_organ = BP_HEAD
	organ_tag = BP_ACCESS_CONTROLLER
	surface_accessible = TRUE
	status = ORGAN_PROSTHETIC
	var/obj/item/card/id/id_card = /obj/item/card/id/animatronic

/obj/item/organ/internal/access_controller/do_install(mob/living/carbon/human/target, obj/item/organ/external/affected)
	if(!(. = ..()) || !owner)
		return
	var/datum/extension/access_provider/owner_access = get_or_create_extension(owner, /datum/extension/access_provider)
	owner_access?.register_id(src)
	owner?.set_id_info(id_card)

/obj/item/organ/internal/access_controller/do_uninstall(in_place, detach, ignore_children)
	if(owner)
		var/datum/extension/access_provider/owner_access = get_extension(owner, /datum/extension/access_provider)
		owner_access?.unregister_id(src)
	. = ..()

/obj/item/organ/internal/access_controller/Initialize()
	if(ispath(id_card))
		id_card = new id_card(src)
	. = ..()

/obj/item/organ/internal/access_controller/GetIdCards()
	//Not using is_broken() because it should be able to function when CUT_AWAY is set
	if(damage < min_broken_damage)
		LAZYDISTINCTADD(., id_card)
