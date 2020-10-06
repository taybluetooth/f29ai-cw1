/* DECLARING TYPE FACTS*/
type(fire).
type(grass).
type(water).
type(electric).
type(normal).

/* DECLARING MONSTER FACTS*/
monster(charmander,fire).
monster(bulbasaur,grass).
monster(squirtle,water).
monster(pikachu,electric).
monster(eevee,normal).

/* DECLARING FIRE ABILITY FACTS*/
ability(fireFang,fire).
ability(firePunch,fire).
ability(sunnyDay,fire).

/* DECLARING GRASS ABILITY FACTS*/
ability(vineWhip, grass)
ability(razorLeaf, grass)
ability(solarBeam, grass)
ability(grassKnot, grass)

/* DECLARING WATER ABILITY FACTS*/
ability(waterPulse, water)
ability(aquaTail, water)
ability(rainDance, water)

/* DECLARING ELECTRIC ABILITY FACTS*/
ability(thunderPunch, electric)
ability(thunderbolt, electric)

/* DECLARING NORMAL ABILITY FACTS*/
ability(tackle, normal)
ability(scratch, normal)
ability(bite, normal)
ability(lastResort, normal)

monsterAbility(m,a).
