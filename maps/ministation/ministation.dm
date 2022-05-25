/*
Ministation "Zebra"
A butchered variant on Giacom's Ministation designed for 5 to 10 players.
Now poorly imported for Nebula!
*/

#if !defined(USING_MAP_DATUM)

	#include "../../mods/species/animatronics/_animatronics.dme"

	#define USING_MAP_DATUM /datum/map/ministation

	#include "ministation.dmm"
	#include "ministation_unit_testing.dm"

	#include "ministation_areas.dm"
	#include "ministation_departments.dm"
	#include "ministation_headsets.dm"
	#include "ministation_telecomms.dm"
	#include "ministation_jobs.dm"
	#include "pizzeria_spawnpoints.dm"

	#include "jobs/animatronics.dm"
	#include "jobs/command.dm"
	#include "jobs/civilian.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/security.dm"
	#include "jobs/synthetics.dm"

	#include "outfits/_outfits.dm"
	#include "outfits/animatronics.dm"
	#include "outfits/command.dm"
	#include "outfits/civilian.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/security.dm"

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring ministation.

#endif