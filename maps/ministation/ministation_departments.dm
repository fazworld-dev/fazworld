/decl/department/service
	name = "Service"
	announce_channel = "Service"
	colour = "#88b764"
	display_color = "#d0f0c0"

/decl/department/management
	name = "Management"
	colour = "#800080"
	display_priority = 5
	display_color = "#ccccff"

/obj/machinery/network/pager
	department = /decl/department/management

/decl/department/guest
	name = "Guest"
	display_priority = -1
	display_color = "#dddddd"

/decl/department/service
	name = "Service"
	display_priority = 2
	display_color = "#dddddd"

/decl/department/engineering
	name = "Maintenance"
	announce_channel = "Maintenance"
	colour = "#ffa500"
	display_priority = 3
	display_color = "#fff5cc"

/decl/department/medical
	name = "Medical"
	goals = list(/datum/goal/department/medical_fatalities)
	announce_channel = "Medical"
	colour = "#008000"
	display_priority = 4
	display_color = "#ffeef0"

/obj/item/robot_module/medical
	associated_department = /decl/department/medical

/obj/machinery/network/pager/medical
	department = /decl/department/medical

/decl/department/security
	name = "Security"
	announce_channel = "Security"
	colour = "#dd0000"
	display_priority = 5
	display_color = "#ffddf0"

/obj/item/robot_module/security
	associated_department = /decl/department/security

/obj/machinery/network/pager/security
	department = /decl/department/security

/decl/department/entertainment
	name = "Entertainment"
	colour = COMMS_COLOR_ENTERTAIN
	display_priority = 6
	display_color = "#ccffcc"

/decl/department/logistics
	name = "Logistics"
	announce_channel = "Logistics"
	colour = "#bb9040"
	display_color = "#f0e68c"

/obj/machinery/network/pager/cargo
	department = /decl/department/logistics