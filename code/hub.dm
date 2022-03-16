var/global/visibility_pref = FALSE

/world
/* This page contains info for the hub. To allow your server to be visible on the hub, update the entry in the config.
 * You can also toggle visibility from in-game with toggle-hub-visibility; be aware that it takes a few minutes for the hub go
 */
	hub = "MoondancerPony.FazWorld"
	name = "Faz-World"

/world/proc/update_hub_visibility()
	global.visibility_pref = !global.visibility_pref
	hub_password = (global.visibility_pref && config?.hub_password) ? config.hub_password : "SORRYNOPASSWORD"
