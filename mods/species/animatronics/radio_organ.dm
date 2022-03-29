// Radio 'headset'
/obj/item/radio/headset/animatronic
	encryption_keys = list(/obj/item/encryptionkey/animatronic_integrated)
	icon = 'icons/obj/robot_component.dmi' // Cyborgs radio icons should look like the component.
	icon_state = "radio"
	canhear_range = 0
	subspace_transmission = TRUE
	cell = null
	power_usage = 75

/obj/item/radio/headset/animatronic/get_cell()
	var/obj/item/organ/internal/animatronic_radio/radio = loc
	if (istype(radio) && radio.owner)
		return radio.owner.get_organ(BP_CELL)

/obj/item/encryptionkey/animatronic_integrated
	name = "animatronic integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"

// ID implant/organ/interface device.
/obj/item/organ/internal/animatronic_radio
	name = "internal radio"
	desc = "An internal radio that is capable of communicating with ."
	icon = 'icons/obj/card.dmi'
	icon_state = "robot_base"
	parent_organ = BP_HEAD
	organ_tag = BP_RADIO
	status = ORGAN_PROSTHETIC
	var/obj/item/radio/headset/animatronic/radio = /obj/item/radio/headset/animatronic

/obj/item/organ/internal/animatronic_radio/do_install(mob/living/carbon/human/target, obj/item/organ/external/affected)
	if(!(. = ..()) || !owner)
		return
	var/datum/extension/radio_provider/owner_access = get_or_create_extension(owner, /datum/extension/radio_provider)
	owner_access?.register_radio(src)

/obj/item/organ/internal/animatronic_radio/do_uninstall(in_place, detach, ignore_children)
	if(owner)
		var/datum/extension/radio_provider/owner_access = get_extension(owner, /datum/extension/radio_provider)
		owner_access?.unregister_radio(src)
	. = ..()

/obj/item/organ/internal/animatronic_radio/Initialize()
	if(ispath(radio))
		radio = new radio(src)
	. = ..()

/obj/item/organ/internal/animatronic_radio/GetRadios(message_mode)
	. = ..()
	if(!message_mode || (message_mode == "headset"))
		LAZYDISTINCTADD(., radio)
