//////Exile implants will allow you to use the station gate, but not return home. This will allow security to exile badguys/for badguys to exile their kill targets////////


/obj/item/implanter/exile
	name = "implanter-exile"
	imp = /obj/item/implant/exile

/obj/item/implant/exile
	name = "exile"
	desc = "Prevents you from returning from away missions."

/obj/item/implant/exile/get_data()
	var/dat = {"
	<b>Implant Specifications:</b><BR>
	<b>Name:</b> [global.using_map.company_name] Employee Exile Implant<BR>
	<b>Implant Details:</b> The onboard gateway system has been modified to reject entry by individuals containing this implant<BR>"}
	return dat

/obj/item/implantcase/exile
	name = "glass case - 'Exile'"
	desc = "A case containing an exile implant."
	icon_state = "implantcase-r"
	imp = /obj/item/implant/exile

/obj/structure/closet/secure_closet/exile
	name = "Exile Implants"
	req_access = list(access_hos)

/obj/structure/closet/secure_closet/exile/Initialize()
	. = ..()
	new /obj/item/implanter/exile(src)
	new /obj/item/implantcase/exile(src)
	new /obj/item/implantcase/exile(src)
	new /obj/item/implantcase/exile(src)
	new /obj/item/implantcase/exile(src)
	new /obj/item/implantcase/exile(src)
