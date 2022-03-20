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
/mob/living/carbon/human/animatronic/Initialize(mapload)
	. = ..(mapload, SPECIES_ANIMATRONIC)

// roxy
/mob/living/carbon/human/animatronic/roxy/Initialize(mapload)
	. = ..(mapload)
	set_bodytype(GET_DECL(/decl/bodytype/animatronic/roxy))
	restore_all_organs()

// monty
/mob/living/carbon/human/animatronic/monty/Initialize(mapload)
	. = ..(mapload)
	set_bodytype(GET_DECL(/decl/bodytype/animatronic/monty))
	restore_all_organs()

// glamrock freddy
/mob/living/carbon/human/animatronic/glam_freddy/Initialize(mapload)
	. = ..(mapload)
	set_bodytype(GET_DECL(/decl/bodytype/animatronic/glam_freddy))
	restore_all_organs()

// glamrock chica
/mob/living/carbon/human/animatronic/glam_chica/Initialize(mapload)
	. = ..(mapload)
	set_bodytype(GET_DECL(/decl/bodytype/animatronic/glam_chica))
	restore_all_organs()

// freddy fazbear
/mob/living/carbon/human/animatronic/freddy_fazbear/Initialize(mapload)
	. = ..(mapload)
	set_bodytype(GET_DECL(/decl/bodytype/animatronic/freddy_fazbear))
	restore_all_organs()