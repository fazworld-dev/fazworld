#define SPECIES_ANIMATRONIC    "Animatronic"
/decl/modpack/animatronics
	name = "Animatronics Modpack"
	dreams = list(
		"animatronics", "a malfunctioning animatronic", "Freddy Fazbear", "Toy Freddy", "Glamrock Freddy",
		"Chica", "Toy Chica", "Glamrock Chica", "Bonnie", "Toy Bonnie", "Glamrock Bonnie", "Montgomery Gator",
		"Monty", "Foxy", "Roxanne Wolf", "Roxy"
	)

// Mapping helpers for spawning animatronics FOR TESTING ONLY

// endoskeleton
/mob/living/carbon/human/animatronic
	var/animatronic_type = /decl/bodytype/animatronic

/mob/living/carbon/human/animatronic/Initialize(mapload)
	. = ..(mapload, SPECIES_ANIMATRONIC)
	var/decl/bodytype/animatronic/new_bodytype = GET_DECL(animatronic_type)
	set_bodytype(new_bodytype)
	species.create_missing_organs(src, TRUE)
	var/old_tail = get_organ(BP_TAIL)
	if(old_tail)
		qdel(old_tail)
	if(new_bodytype.has_tail)
		var/obj/item/organ/external/tail/animatronic/new_tail = new
		add_organ(new_tail, get_organ(BP_GROIN))
		new_tail.robotize(new_bodytype.model)

	change_hair(new_bodytype.default_hair_style)
	set_gender(new_bodytype.associated_gender)
	fully_replace_character_name(new_bodytype.name, in_depth = FALSE)

// roxy
/mob/living/carbon/human/animatronic/roxy/animatronic_type = /decl/bodytype/animatronic/roxy

// monty
/mob/living/carbon/human/animatronic/monty/animatronic_type = /decl/bodytype/animatronic/monty

// glamrock freddy
/mob/living/carbon/human/animatronic/glam_freddy/animatronic_type = /decl/bodytype/animatronic/glam_freddy

// glamrock chica
/mob/living/carbon/human/animatronic/glam_chica/animatronic_type = /decl/bodytype/animatronic/glam_chica

// glamrock bonnie
/mob/living/carbon/human/animatronic/glam_bonnie/animatronic_type = /decl/bodytype/animatronic/glam_bonnie

// glamrock foxy
/mob/living/carbon/human/animatronic/glam_foxy/animatronic_type = /decl/bodytype/animatronic/glam_foxy

// freddy fazbear
/mob/living/carbon/human/animatronic/freddy_fazbear/animatronic_type = /decl/bodytype/animatronic/freddy_fazbear