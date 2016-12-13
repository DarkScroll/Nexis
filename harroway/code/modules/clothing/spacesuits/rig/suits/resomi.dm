/obj/item/weapon/rig/resomi
	name = "Resomi hazard environment protection"
	desc = "Very rare and advanced hardsuit with exoskeleton-servomotor complex, aimed at preserving the life of the operator during battles or emergency at any costs. This one seems to be the one of the old versions without energy shield protection, nanobot repair system and AR-compatibility."
	icon_state = "resomi_rig"
	suit_type = "Nansi (Defender)"
	armor = list(melee = 80, bullet = 70, laser = 60, energy = 45, bomb = 80, bio = 100, rad = 60)
	online_slowdown = 0
	offline_slowdown = 4
	offline_vision_restriction = TINT_HEAVY
	allowed = list(/obj/item/device/flashlight, /obj/item/weapon/tank,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/handcuffs,/obj/item/device/t_scanner, /obj/item/weapon/rcd, /obj/item/weapon/crowbar, \
	/obj/item/weapon/screwdriver, /obj/item/weapon/weldingtool, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench, /obj/item/device/multitool, \
	/obj/item/device/radio, /obj/item/device/analyzer,/obj/item/weapon/storage/briefcase/inflatable, /obj/item/weapon/melee/baton, /obj/item/weapon/gun, \
	/obj/item/weapon/storage/firstaid, /obj/item/weapon/reagent_containers/hypospray, /obj/item/roller, /obj/item/device/suit_cooling_unit)
	chest_type = /obj/item/clothing/suit/space/rig/resomi
	helm_type = /obj/item/clothing/head/helmet/space/rig/resomi
	boot_type = /obj/item/clothing/shoes/magboots/rig/resomi
	glove_type = /obj/item/clothing/gloves/rig/resomi

/obj/item/clothing/head/helmet/space/rig/resomi
	species_restricted = list("Resomi")

/obj/item/clothing/suit/space/rig/resomi
	species_restricted = list("Resomi")

/obj/item/clothing/shoes/magboots/rig/resomi
	species_restricted = list("Resomi")

/obj/item/clothing/gloves/rig/resomi
	species_restricted = list("Resomi")

/obj/item/weapon/rig/resomi/equipped
	initial_modules = list(
		/obj/item/rig_module/vision/multi,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/chem_dispenser/injector
	)