/datum/appearance_descriptor/age/animatronic
	chargen_min_index = 1
	chargen_max_index = 4
	standalone_value_descriptors = list(
		"brand new" =            1,
		"worn" =                 5,
		"an older model" =      12,
		"nearing end-of-life" = 16,
		"entirely obsolete" =   20
	)

/decl/species/animatronic
	name =                  SPECIES_ANIMATRONIC
	name_plural =           "Animatronics"
	description =           "Though more properly called robots, the term animatronic has persisted for these machines since the very founding of Fazbear Entertainment."
	cyborg_noun =           null

	blood_types =           list(/decl/blood_type/coolant)

	available_bodytypes =   list(/decl/bodytype/animatronic)
	age_descriptor =        /datum/appearance_descriptor/age/animatronic
	hidden_from_codex =     FALSE
	species_flags =         SPECIES_FLAG_NO_MINOR_CUT | SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_POISON | SPECIES_FLAG_SYNTHETIC
	spawn_flags =           SPECIES_IS_RESTRICTED // Must be spawned in via job or antag role.
	//appearance_flags =      HAS_EYE_COLOR
	strength =              STR_HIGH
	warning_low_pressure =  50
	hazard_low_pressure =   -1
	flesh_color =           COLOR_GUNMETAL
	cold_level_1 =          SYNTH_COLD_LEVEL_1
	cold_level_2 =          SYNTH_COLD_LEVEL_2
	cold_level_3 =          SYNTH_COLD_LEVEL_3
	heat_level_1 =          SYNTH_HEAT_LEVEL_1
	heat_level_2 =          SYNTH_HEAT_LEVEL_2
	heat_level_3 =          SYNTH_HEAT_LEVEL_3
	body_temperature =      null
	passive_temp_gain =     5  // stabilize at ~80 C in a 20 C environment.
	heat_discomfort_level = 100 + T0C

	base_eye_color = "#00ccff"

	heat_discomfort_strings = list(
		"You are dangerously close to overheating!"
	)
	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch
	)
	available_cultural_info = list(
		TAG_CULTURE = list(/decl/cultural_info/culture/animatronic)
	)
	has_organ = list(
		BP_BRAIN =  /obj/item/organ/internal/mmi_holder/controlchip,
		BP_CELL =   /obj/item/organ/internal/cell,
		BP_EYES  =  /obj/item/organ/internal/eyes/robot,
		BP_ACCESS_CONTROLLER = /obj/item/organ/internal/access_controller,
		BP_RADIO = /obj/item/organ/internal/animatronic_radio
	)
	vital_organs = list(
		BP_BRAIN = list("path" = /obj/item/organ/internal/mmi_holder/controlchip),
		BP_CHEST = list("path" = /obj/item/organ/external/chest),
	)

	exertion_effect_chance = 10
	exertion_charge_scale = 1
	exertion_emotes_synthetic = list(
		/decl/emote/exertion/synthetic,
		/decl/emote/exertion/synthetic/creak
	)

/decl/species/animatronic/post_organ_rejuvenate(obj/item/organ/org, mob/living/carbon/human/H)
	var/obj/item/organ/external/E = org
	var/decl/bodytype/animatronic/A = H.bodytype
	var/our_model = istype(A) ? A.model : /decl/prosthetics_manufacturer/endoskeleton
	if(istype(E) && (!BP_IS_PROSTHETIC(E) || (E.model != our_model)))
		E.robotize(our_model)
/*
	var/obj/item/organ/external/head/head = org
	if(istype(head))
		head.glowing_eyes = TRUE
	var/obj/item/organ/internal/eyes/eyes = org
	if(istype(eyes))
		eyes.eye_icon = 'mods/species/animatronics/icons/eyes.dmi'
*/

/decl/species/animatronic/disfigure_msg(var/mob/living/carbon/human/H)
	var/decl/pronouns/G = H.get_pronouns()
	if(H.bodytype?.type == /decl/bodytype/animatronic)
		return SPAN_DANGER("[G.His] endoskeleton is heavily damaged!\n")
	return SPAN_DANGER("[G.His] outer casing is shattered and cracked!\n")

/decl/species/animatronic/get_root_species_name(mob/living/carbon/human/H)
	. = ..()
	if(H?.bodytype?.type == /decl/bodytype/animatronic)
		return "Endoskeleton"