/datum/job/ministation/animatronic
	title = "Glamrock Freddy Animatronic"
	event_categories = list(ASSIGNMENT_ANY, ASSIGNMENT_SECURITY)
	total_positions = 1
	spawn_positions = 1
	supervisors = "your handlers and management"
	selection_color = "#254c25"
	minimal_player_age = 7
	account_allowed = FALSE
	economic_power = 0
	loadout_allowed = FALSE
	outfit_type = /decl/hierarchy/outfit/job/ministation/animatronic/freddy_fazbear
	hud_icon = "hudblank"
	guestbanned = TRUE
	not_random_selectable = TRUE
	department_types = list(/decl/department/entertainment)
	var/animatronic_bodytype = /decl/bodytype/animatronic/glam_freddy

/datum/job/ministation/animatronic/proc/animatronicize(var/mob/living/carbon/human/H, var/full = FALSE)
	H.change_species(SPECIES_ANIMATRONIC)
	var/decl/bodytype/animatronic/new_bodytype = GET_DECL(animatronic_bodytype)
	H.set_bodytype(new_bodytype)
	H.species?.create_missing_organs(H, TRUE)
	var/old_tail = H.get_organ(BP_TAIL)
	if(old_tail)
		qdel(old_tail)
	if(new_bodytype.has_tail)
		var/obj/item/organ/external/tail/animatronic/new_tail = new (src, null, H.dna)
		H.add_organ(new_tail, H.get_organ(BP_GROIN))
		new_tail.robotize(new_bodytype.model)
	H.change_hair(new_bodytype.default_hair_style)
	if(!full)
		return
	H.set_gender(new_bodytype.associated_gender)
	H.fully_replace_character_name(new_bodytype.name, in_depth = FALSE)

/datum/job/ministation/animatronic/equip(var/mob/living/carbon/human/H, var/alt_title, var/datum/mil_branch/branch, var/datum/mil_rank/grade)
	animatronicize(H, TRUE)
	return ..()

/datum/job/ministation/animatronic/equip_preview(mob/living/carbon/human/H, var/alt_title, var/datum/mil_branch/branch, var/datum/mil_rank/grade, var/additional_skips)
	animatronicize(H, FALSE)
	return ..()

/datum/job/ministation/animatronic/monty
	title = "Montgomery Gator Animatronic"
	animatronic_bodytype = /decl/bodytype/animatronic/monty
	outfit_type = /decl/hierarchy/outfit/job/ministation/animatronic/monty

/datum/job/ministation/animatronic/roxy
	title = "Roxanne Wolf Animatronic"
	animatronic_bodytype = /decl/bodytype/animatronic/roxy
	outfit_type = /decl/hierarchy/outfit/job/ministation/animatronic/roxy