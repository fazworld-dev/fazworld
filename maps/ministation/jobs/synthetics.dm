/datum/job/ministation/robot
	title = "S.T.A.F.F. Bot"
	event_categories = list(ASSIGNMENT_ROBOT)
	total_positions = 1
	spawn_positions = 1
	supervisors = "your laws and management"
	selection_color = "#254c25"
	minimal_player_age = 7
	account_allowed = FALSE
	economic_power = 0
	loadout_allowed = FALSE
	outfit_type = /decl/hierarchy/outfit/job/silicon/cyborg
	hud_icon = "hudblank"
	skill_points = 0
	no_skill_buffs = TRUE
	guestbanned = TRUE
	not_random_selectable = TRUE
	skip_loadout_preview = TRUE
	department_types = list(/decl/department/logistics)

/datum/job/ministation/robot/handle_variant_join(var/mob/living/carbon/human/H, var/alt_title)
	if(H)
		return H.Robotize(SSrobots.get_mob_type_by_title(alt_title || title))

/datum/job/ministation/robot/equip(var/mob/living/carbon/human/H)
	return !!H
