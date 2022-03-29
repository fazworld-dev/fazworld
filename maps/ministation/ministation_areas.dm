/area/pizzeria
	name = "pizzeria"
	icon = 'maps/ministation/ministation_areas.dmi'
	icon_state = "default"

/area/pizzeria/outside
	name = "outside"
	requires_power = FALSE
	icon_state = "green"
	sound_env = PARKING_LOT
	base_turf = /turf/exterior/grass
	area_flags = AREA_FLAG_EXTERNAL | AREA_FLAG_IS_NOT_PERSISTENT | AREA_FLAG_IS_BACKGROUND
	show_starlight = TRUE
	is_outside = OUTSIDE_YES

/area/pizzeria/outside/loading
	name = "loading dock"
	icon_state = "green"

/area/pizzeria/outside/patio
	name = "patio"
	icon_state = "pink"

/area/pizzeria/dining
	name = "dining room"
	icon_state = "pink"

/area/pizzeria/bathroom
	name = "bathroom"
	icon_state = "pink"

/area/pizzeria/staff
	name = "staff hallway"
	icon_state = "white"
	area_flags = AREA_FLAG_HALLWAY

/area/pizzeria/staff/kitchen
	name = "kitchen"
	icon_state = "white"

/area/pizzeria/staff/power
	name = "power closet"
	icon_state = "orange"

/area/pizzeria/staff/security
	name = "security office"
	icon_state = "red"

/area/pizzeria/staff/backstage
	name = "backstage"
	icon_state = "dark_blue"

/area/pizzeria/staff/maintenance
	name = "maintenance bay"
	icon_state = "orange"

/area/pizzeria/staff/stage
	name = "stage"
	icon_state = "dark_blue"

/area/pizzeria/staff/janitor
	name = "janitor's closet"
	icon_state = "janitor"

/area/pizzeria/secret
	name = "abandoned room"
	icon_state = "red"
