/*
// ******** Created by Arch-Nihil ********



// *======= Importing Stuff =======*


import mods.nei.NEI;



// *======= Variables =======*


val Stick = <ore:stickWood>;

val CobaltRod = <ore:stickCobalt>;
val ArditeRod = <ore:rodArdite>;
val ManyullynRod = <ore:rodManyullyn>;

val CobaltSaw = <IguanaTweaksTConstruct:sawCobalt>;
val ArditeSaw = <IguanaTweaksTConstruct:sawArdite>;
val ManyullynSaw = <IguanaTweaksTConstruct:sawManyullyn>;

val CobaltSawHead = <ore:toolHeadSawCobalt>;
val ArditeBlade = <TConstruct:swordBlade:11>;
val ManyullynBlade = <TConstruct:swordBlade:12>;



// *======= Removing Recipes =======*


// --- Cobalt Saw
recipes.remove(CobaltSaw);

// --- Iron Saw
recipes.remove(ArditeSaw);

// --- Diamond Saw
recipes.remove(ManyullynSaw);



// *======= Adding Back Recipes =======*


// --- Cobalt Saw
recipes.addShaped(CobaltSaw, [
[Stick, CobaltRod, CobaltRod],
[Stick, CobaltSawHead, CobaltSawHead],
[null, null, null]]);

// --- Ardite Saw
recipes.addShaped(ArditeSaw, [
[Stick, ArditeRod, ArditeRod],
[Stick, ArditeBlade, ArditeBlade],
[null, null, null]]);

// --- Manyullyn Saw
recipes.addShaped(ManyullynSaw, [
[Stick, ManyullynRod, ManyullynRod],
[Stick, ManyullynBlade, ManyullynBlade],
[null, null, null]]);



// #======= Hiding Stuff =======#


*/