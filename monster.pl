/* CALLUM TAYLOR */
/* F29AI ARTIFICIAL INTELLIGENCE AND INTELLIGENT AGENTS */
/* COURSE WORK 1 */

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
ability(vineWhip, grass).
ability(razorLeaf, grass).
ability(solarBeam, grass).
ability(grassKnot, grass).

/* DECLARING WATER ABILITY FACTS */
ability(waterPulse, water).
ability(surf, water).
ability(aquaTail, water).
ability(rainDance, water).

/* DECLARING ELECTRIC ABILITY FACTS */
ability(thunderPunch, electric).
ability(thunderbolt, electric).

/* DECLARING NORMAL ABILITY FACTS */
ability(tackle, normal).
ability(scratch, normal).
ability(bite, normal).
ability(bodySlam, normal).
ability(lastResort, normal).

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

/* DECLARING NORMAL ABILITY EFFECTIVENESS */
typeEffectiveness(normal,fire,ordinary).
typeEffectiveness(normal,water,ordinary).
typeEffectiveness(normal,grass,ordinary).
typeEffectiveness(normal,electric,ordinary).
typeEffectiveness(normal,normal,ordinary).

/* DECLARING FIRE ABILITY EFFECTIVENESS */
typeEffectiveness(fire,fire,weak).
typeEffectiveness(fire,water,weak).
typeEffectiveness(fire,grass,super).
typeEffectiveness(fire,electric,ordinary).
typeEffectiveness(fire,normal,ordinary).

/* DECLARING WATER ABILITY EFFECTIVENESS */
typeEffectiveness(water,fire,super).
typeEffectiveness(water,water,weak).
typeEffectiveness(water,grass,weak).
typeEffectiveness(water,electric,ordinary).
typeEffectiveness(water,normal,ordinary).

/* DECLARING GRASS ABILITY EFFECTIVENESS */
typeEffectiveness(grass,fire,weak).
typeEffectiveness(grass,water,super).
typeEffectiveness(grass,grass,weak).
typeEffectiveness(grass,electric,ordinary).
typeEffectiveness(grass,normal,ordinary).

/* DECLARING ELECTRIC ABILITY EFFECTIVENESS */
typeEffectiveness(electric,fire,ordinary).
typeEffectiveness(electric,water,super).
typeEffectiveness(electric,grass,weak).
typeEffectiveness(electric,electric,weak).
typeEffectiveness(electric,normal,ordinary).

/* DEFINING ABILITY EFFECTIVENESS RULE */
abilityEffectiveness(A,M,E):-
  ability(A,AT),
  monster(M,MT),
  typeEffectiveness(AT,MT,E).

/* DEFINING ABILITY SUPER EFFECTIVENESS RULE */
superAbility(M1,A,M2):-
  monsterAbility(M1,A),
  ability(A,AT),
  monster(M2,MT2),
  typeEffectiveness(AT,MT2,super).

/* DEFINING TYPE ABILITY RULE */
typeAbility(M,A):-
  monsterAbility(M,A),
  ability(A,AT),
  monster(M,MT),
  AT==MT.

/* DEFINING PREDICATE FOR SUPER EFFECTIVENESS */
super(X):-
  X='super'.

/* DEFINING PREDICATE FOR ORDINARY EFFECTIVENESS */
ordinary(X):-
  X='ordinary'.

/* DEFINING PREDICATE FOR WEAK EFFECTIVENESS */
weak(X):-
  X='weak'.

/* DEFINING COMPARISON RULE STATING SUPER > ORDINARY */
comparison(X,Y):-
  super(X),
  ordinary(Y).

/* DEFINING COMPARISON RULE STATING SUPER > WEAK */
comparison(X,Y):-
  super(X),
  weak(Y).

/* DEFINING COMPARISON RULE STATING ORDINARY > WEAK */
comparison(X,Y):-
  ordinary(X),
  weak(Y).

/* DEFINING ABILITY EFFECTIVENESS COMPARISON RULE */
moreEffectiveAbility(A1,A2,T):-
  ability(A1,AT1),
  ability(A2,AT2),
  typeEffectiveness(AT1,T,E1),
  typeEffectiveness(AT2,T,E2),
  comparison(E1,E2).

/* DEFINING COUNTER ABILITY EFFECTIVENESS COMPARISON RULE */
counterAbility(M1,A1,M2,A2):-
  monster(M1,MT1),
  monster(M2,MT2),
  ability(A1,AT1),
  ability(A2,AT2),
  typeEffectiveness(AT1,MT2,E1),
  typeEffectiveness(AT2,MT1,E2),
  comparison(E2,E1).
