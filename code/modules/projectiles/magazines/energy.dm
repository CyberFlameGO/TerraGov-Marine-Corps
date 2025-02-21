//Energy weapons

/obj/item/cell/lasgun
	name = "\improper lasgun Battery"
	desc = "A specialized high density battery used to power lasguns."
	icon = 'icons/obj/items/ammo.dmi'
	icon_state = "m43"
	maxcharge = 600 ///Changed due to the fact some maps and ERTs spawn with the child, the lasrifle. Charges on guns changed accordingly.
	w_class = WEIGHT_CLASS_NORMAL
	icon_state_mini = "mag_cell"
	var/base_ammo_icon = "m43"
	var/reload_delay = 0
	///Magazine flags.
	var/flags_magazine_features = MAGAZINE_REFUND_IN_CHAMBER

/obj/item/cell/lasgun/M43
	name = "\improper M43 lasgun battery"
	desc = "A specialized high density battery used to power the M43 lasgun."
	base_ammo_icon = "m43"
	icon_state = "m43"

/obj/item/cell/lasgun/M43/highcap// Large battery
	name = "\improper M43 highcap lasgun battery"
	desc = "An advanced, ultrahigh capacity battery used to power the M43 lasgun; has sixty percent more charge capacity than standard laspacks."
	base_ammo_icon = "m43_e"
	icon_state = "m43_e"
	maxcharge = 1600

/obj/item/cell/lasgun/M43/Initialize()
	. = ..()
	update_icon()

/obj/item/cell/lasgun/M43/update_icon()
	var/remaining = CEILING((charge / max(maxcharge, 1)) * 100, 25)
	icon_state = "[base_ammo_icon]_[remaining]"

/obj/item/cell/lasgun/pulse
	name = "\improper M19C4 pulse battery"
	desc = "An advanced, ultrahigh capacity battery used to power the M19C4 pulse rifle system; Uses pulse-based energy rather than laser energy, massively increasing its firepower. It can also recharge on its own."
	base_ammo_icon = "pulse"
	icon_state = "pulse"
	maxcharge = 2000 // 100 shots.
	self_recharge = TRUE
	charge_amount = 25 // 10%, 1 shot
	charge_delay = 2 SECONDS

/obj/item/cell/lasgun/pulse/Initialize()
	. = ..()
	update_icon()

/obj/item/cell/lasgun/pulse/update_icon()
	var/remaining = CEILING((charge / max(maxcharge, 1)) * 100, 25)
	icon_state = "[base_ammo_icon]_[remaining]"

/obj/item/cell/lasgun/M43/practice
	name = "\improper M43-P lasgun battery"
	desc = "A specialized high density battery used to power the M43-P practice lasgun. It lacks any potential to harm someone, but it has the ability to recharge."
	self_recharge = TRUE
	charge_amount = 25 // 10%, 2 shots
	charge_delay = 2 SECONDS

/obj/item/cell/lasgun/update_icon()
	return FALSE

/obj/item/cell/lasgun/lasrifle
	name = "\improper Terra Experimental standard battery"
	desc = "A specialized high density battery used to power most standard marine laser guns. It is simply known as the TE power cell."
	base_ammo_icon = "te"
	icon_state = "te"
	icon_state_mini = "mag_cell_te"
	maxcharge = 600

/obj/item/cell/lasgun/lasrifle/Initialize()
	. = ..()
	update_icon()

/obj/item/cell/lasgun/lasrifle/update_icon_state()
	var/remaining = CEILING((charge / max(maxcharge, 1)) * 100, 25)
	icon_state = "[base_ammo_icon]_[remaining]"

/obj/item/cell/lasgun/fob_sentry/cell
	maxcharge = INFINITY
