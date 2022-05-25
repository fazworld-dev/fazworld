/datum/map/ministation
	allowed_spawns = list(
		/decl/spawnpoint/parkinglot,
		/decl/spawnpoint/animatronic
	)
	default_spawn = /decl/spawnpoint/parkinglot

/decl/spawnpoint/parkinglot
	name = "Parking Lot"
	msg = "has arrived on the bus"

/decl/spawnpoint/parkinglot/Initialize()
	. = ..()
	turfs = global.latejoin_locations

var/global/list/latejoin_animatronic_locations =  list()

/decl/spawnpoint/animatronic
	name = "Animatronic Storage"
	msg = "has been activated from storage"

/decl/spawnpoint/animatronic/Initialize()
	. = ..()
	LAZYDISTINCTADD(restrict_job, typesof(/datum/job/ministation/animatronic))
	turfs = global.latejoin_animatronic_locations

/obj/abstract/landmark/latejoin/animatronic/add_loc()
	global.latejoin_animatronic_locations |= get_turf(src)