/obj/machinery/computer/cryopod/animatronic
	name = "animatronic storage console"
	desc = "An interface between crew and the animatronic storage systems."
	icon = 'icons/obj/robot_storage.dmi'
	icon_state = "console"

	storage_type = "animatronics"
	storage_name = "Animatronic Storage Control"

/obj/machinery/cryopod/animatronic
	name = "animatronic storage unit"
	desc = "A storage unit for animatronics."
	icon = 'icons/obj/robot_storage.dmi'
	icon_state = "pod_0"
	base_icon_state = "pod_0"
	occupied_icon_state = "pod_1"
	on_store_message = "has entered animatronic storage."
	on_store_name = "Animatronic Storage Oversight"
	on_enter_occupant_message = "The storage unit broadcasts a sleep signal to you. Your systems start to shut down, and you enter low-power mode."
	applies_stasis = 0

/obj/machinery/cryopod/animatronic/check_occupant_allowed(mob/M)
	return ..() && isspecies(M, SPECIES_ANIMATRONIC)

/obj/item/stock_parts/circuitboard/animatronicstoragecontrol
	name = "Circuit board (Animatronic Storage Console)"
	build_path = /obj/machinery/computer/cryopod/animatronic
	origin_tech = "{'programming':3}"

/datum/fabricator_recipe/imprinter/circuit/animatronic_storage
	path = /obj/item/stock_parts/circuitboard/animatronicstoragecontrol