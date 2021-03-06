/datum/map
	var/datum/gas_mixture/exterior_atmosphere
	var/exterior_atmos_temp = T20C
	var/list/exterior_atmos_composition = list(
		/decl/material/gas/oxygen = MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)

/datum/map/proc/build_exterior_atmosphere()
	exterior_atmosphere = new
	for(var/gas in exterior_atmos_composition)
		exterior_atmosphere.adjust_gas(gas, exterior_atmos_composition[gas], FALSE)
	exterior_atmosphere.temperature = exterior_atmos_temp
	exterior_atmosphere.update_values()
	exterior_atmosphere.check_tile_graphic()

/datum/map/proc/get_exterior_atmosphere()
	if(exterior_atmosphere)
		var/datum/gas_mixture/gas = new
		gas.copy_from(exterior_atmosphere)
		return gas
