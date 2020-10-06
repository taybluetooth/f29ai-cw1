/* DECLARING TYPE FACTS */
type(fire).
type(grass).
type(water).
type(electric).
type(normal).

/* DECLARING MONSTER FACTS */
monster(charmander,fire).
monster(bulbasaur,grass).
monster(squirtle,water).
monster(pikachu,electric).
monster(eevee,normal).

/* DECLARING FIRE ABILITY FACTS */
ability(fireFang,fire).
ability(firePunch,fire).
ability(sunnyDay,fire).

/* DECLARING GRASS ABILITY FACTS */
ability(vineWhip, grass)
ability(razorLeaf, grass)
ability(solarBeam, grass)
ability(grassKnot, grass)

/* DECLARING WATER ABILITY FACTS */
ability(waterPulse, water)
ability(surf, water)
ability(aquaTail, water)
ability(rainDance, water)

/* DECLARING ELECTRIC ABILITY FACTS */
ability(thunderPunch, electric)
ability(thunderbolt, electric)

/* DECLARING NORMAL ABILITY FACTS */
ability(tackle, normal)
ability(scratch, normal)
ability(bite, normal)
ability(bodySlam, normal)
ability(lastResort, normal)

/* DECLARING CHARMANDER ABILITIES */
monsterAbility(charmander,scratch).
monsterAbility(charmander,fireFang).
monsterAbility(charmander,firePunch).
monsterAbility(charmander,thunderPunch).

/* DECLARING BULBASAUR ABILITIES */
monsterAbility(bulbasaur,tackle).
monsterAbility(bulbasaur,vineWhip).
monsterAbility(bulbasaur,razorLeaf).
monsterAbility(bulbasaur,solarBeam).

/* DECLARING SQUIRTLE ABILITIES */
monsterAbility(squirtle,tackle).
monsterAbility(squirtle,waterPulse).
monsterAbility(squirtle,aquaTail).
monsterAbility(squirtle,bodySlam).

/* DECLARING PIKACHU ABILITIES */
monsterAbility(pikachu,thunderPunch).
monsterAbility(pikachu,surf).
monsterAbility(pikachu,grassKnot).
monsterAbility(pikachu,thunderbolt).

/* DECLARING EEVEE ABILITIES */
monsterAbility(eevee,rainDance).
monsterAbility(eevee,sunnyDay).
monsterAbility(eevee,bite).
monsterAbility(eevee,lastResort).
