/obj/item/encryptionkey/faz_manager
	name = "manager's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Management" = TRUE, "Entertainment" = TRUE, "Security" = TRUE, "Maintenance" = FALSE, "Medical" = FALSE, "Logistics" = FALSE, "Service" = FALSE)

/obj/item/radio/headset/faz_manager
	icon = 'icons/obj/items/device/radio/headsets/headset_command_alt.dmi'
	encryption_keys = list(/obj/item/encryptionkey/faz_manager)

/obj/item/encryptionkey/faz_hos
	name = "head of security's encryption key"
	icon_state = "hos_cypherkey"
	channels = list("Security" = TRUE, "Management" = TRUE)

/obj/item/radio/headset/faz_hos
	name = "head of security's headset"
	icon = 'icons/obj/items/device/radio/headsets/headset_command_alt.dmi'
	encryption_keys = list(/obj/item/encryptionkey/faz_hos)

/obj/item/encryptionkey/faz_com
	name = "chief of maintenance's encryption key"
	icon_state = "ce_cypherkey"
	channels = list("Maintenance" = TRUE, "Management" = TRUE)

/obj/item/radio/headset/faz_com
	name = "chief of maintenance's headset"
	icon = 'icons/obj/items/device/radio/headsets/headset_command_alt.dmi'
	encryption_keys = list(/obj/item/encryptionkey/faz_com)

/obj/item/encryptionkey/faz_sec
	name = "security radio encryption key"
	icon_state = "sec_cypherkey"
	channels = list("Security" = TRUE, "Management" = TRUE)

/obj/item/radio/headset/faz_sec
	name = "security headset"
	icon = 'icons/obj/items/device/radio/headsets/headset_security_alt.dmi'
	encryption_keys = list(/obj/item/encryptionkey/faz_sec)

/obj/item/encryptionkey/faz_logistics
	name = "logistics radio encryption key"
	icon_state = "cargo_cypherkey"
	channels = list("Logistics" = TRUE)

/obj/item/radio/headset/faz_logistics
	name = "logistics radio headset"
	icon = 'icons/obj/items/device/radio/headsets/headset_cargo_alt.dmi'
	encryption_keys = list(/obj/item/encryptionkey/faz_logistics)

/*
/obj/item/encryptionkey/faz_service
	name = "service radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Service" = TRUE)

/obj/item/radio/headset/faz_service
	name = "service radio headset"
	icon = 'icons/obj/items/device/radio/headsets/headset_service.dmi'
	encryption_keys = list(/obj/item/encryptionkey/faz_service)
*/

/obj/item/encryptionkey/faz_maint
	name = "maintenance radio encryption key"
	icon_state = "eng_cypherkey"
	channels = list("Maintenance" = TRUE)

/obj/item/radio/headset/faz_maint
	name = "logistics radio headset"
	icon = 'icons/obj/items/device/radio/headsets/headset_engineering_alt.dmi'
	encryption_keys = list(/obj/item/encryptionkey/faz_maint)

/obj/item/encryptionkey/faz_handler
	name = "animatronic handler's encryption key"
	channels = list("Entertainment" = TRUE, "Service" = TRUE, "Logistics" = TRUE)

/obj/item/radio/headset/faz_med
	name = "medical radio headset"
	icon = 'icons/obj/items/device/radio/headsets/headset_medical_alt.dmi'
	encryption_keys = list(/obj/item/encryptionkey/headset_med)

// map override
/obj/item/encryptionkey/animatronic_integrated
	channels = list("Animatronic Private" = TRUE, "Entertainment" = TRUE, "Service" = TRUE)