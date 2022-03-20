/datum/job/ministation/animatronic
	title = "Freddy Fazbear Animatronic"
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
	skill_points = 0
	no_skill_buffs = TRUE
	guestbanned = TRUE
	not_random_selectable = TRUE
	department_types = list(/decl/department/entertainment)
	var/animatronic_bodytype = /decl/bodytype/animatronic/freddy_fazbear
	var/animatronic_name = "Freddy Fazbear"
	var/animatronic_gender = MALE

/datum/job/ministation/animatronic/proc/animatronicize(var/mob/living/carbon/human/H, var/full = FALSE)
	H.change_species(SPECIES_ANIMATRONIC)
	H.set_bodytype(GET_DECL(animatronic_bodytype))
	H.species?.create_missing_organs(H, TRUE)
	if(!full)
		return
	H.set_gender(animatronic_gender)
	H.fully_replace_character_name(animatronic_name, in_depth = FALSE)

/datum/job/ministation/animatronic/equip(var/mob/living/carbon/human/H, var/alt_title, var/datum/mil_branch/branch, var/datum/mil_rank/grade)
	animatronicize(H, TRUE)
	return ..()

/datum/job/ministation/animatronic/equip_preview(mob/living/carbon/human/H, var/alt_title, var/datum/mil_branch/branch, var/datum/mil_rank/grade, var/additional_skips)
	animatronicize(H, FALSE)
	return ..()