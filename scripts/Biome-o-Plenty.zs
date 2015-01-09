// ******** Created by Arch-Nihil ********



// *======= Importing Stuff =======*


import mods.nei.NEI;
import mods.ic2.Compressor;
import mods.ic2.Macerator;



// *======= Variables =======*


val Mud = <BiomesOPlenty:mud>;
val Quicksand = <BiomesOPlenty:mud:1>;
val AshBlock = <BiomesOPlenty:ash>;
val Flesh = <BiomesOPlenty:flesh>;
val HoneycombBlock = <BiomesOPlenty:hive>;
val FilledHoneycombBlock = <BiomesOPlenty:hive:3>;

val SmallBoneS = <BiomesOPlenty:bones>;
val MediumBoneS = <BiomesOPlenty:bones:1>;
val LargeBoneS = <BiomesOPlenty:bones:2>;

val CelestialCrystal = <BiomesOPlenty:crystal>;
val AmethystBlock = <BiomesOPlenty:gemOre:1>;
val RubyBlock = <BiomesOPlenty:gemOre:3>;
val PeridotBlock = <BiomesOPlenty:gemOre:5>;
val TopazBlock = <BiomesOPlenty:gemOre:7>;
val TanzaniteBlock = <BiomesOPlenty:gemOre:9>;
val MalachiteBlock = <BiomesOPlenty:gemOre:11>;
val SapphireBlock = <BiomesOPlenty:gemOre:13>;
val AmberBlock = <BiomesOPlenty:gemOre:15>;

val MudBall = <BiomesOPlenty:mudball>;
val AshPile = <BiomesOPlenty:misc:1>;
val ChunkOfFlesh = <BiomesOPlenty:misc:3>;
val Dart = <BiomesOPlenty:dart>;
val Thorns = <BiomesOPlenty:plants:5>;
val Honeycomb = <BiomesOPlenty:misc:2>;
val FilledHoneycomb = <BiomesOPlenty:food:9>;
val EmptyJar = <BiomesOPlenty:jarEmpty>;

val CelesCrystalShard = <BiomesOPlenty:misc:4>;
val EnderAmethyst = <BiomesOPlenty:gems>;
val BOPRuby = <BiomesOPlenty:gems:1>;
val BOPPeridot = <BiomesOPlenty:gems:2>;
val BOPTopaz = <BiomesOPlenty:gems:3>;
val BOPTanzanite = <BiomesOPlenty:gems:4>;
val BOPMalachite = <BiomesOPlenty:gems:5>;
val BOPSapphire = <BiomesOPlenty:gems:6>;
val BOPAmber = <BiomesOPlenty:gems:7>;

val GtAshPile = <gregtech:gt.metaitem.01:2815>;
val Amethyst = <gregtech:gt.metaitem.02:28509>;
val Ruby = <gregtech:gt.metaitem.02:28502>;
val Topaz = <gregtech:gt.metaitem.02:28507>;
val Tanzanite = <gregtech:gt.metaitem.02:28508>;
val Sapphire = <gregtech:gt.metaitem.02:28503>;
val Amber = <gregtech:gt.metaitem.02:28514>;

val Sand = <minecraft:sand>;
val Stick = <ore:stickWood>;
val Feather = <minecraft:feather>;
val BoneMeal = <minecraft:dye:15>;
val EmptyBottle = <ore:bottleEmpty>;



// *======= Removing Recipes =======*


// --- Mud
recipes.remove(Mud);

// --- Flesh
recipes.remove(Flesh);

// --- Wheat
recipes.removeShaped(<minecraft:wheat>, [
[<BiomesOPlenty:plants:6>, <BiomesOPlenty:plants:6>, <BiomesOPlenty:plants:6>]]);

// --- Dart
recipes.remove(Dart);

// --- Celestial Crystal
recipes.remove(CelestialCrystal);

// --- Block Of Amethyst
recipes.remove(AmethystBlock);

// --- Block Of Ruby
recipes.remove(RubyBlock);

// --- Block Of Peridot
recipes.remove(PeridotBlock);

// --- Block Of Topaz
recipes.remove(TopazBlock);

// --- Block Of Tanzanite
recipes.remove(TanzaniteBlock);

// --- Block Of Malachite
recipes.remove(MalachiteBlock);

// --- Block Of Sapphire
recipes.remove(SapphireBlock);

// --- Block Of Amber
recipes.remove(AmberBlock);

// --- Honeycomb Block
recipes.remove(HoneycombBlock);

// --- Filled Honeycomb Block
recipes.remove(FilledHoneycombBlock);

// --- Bone Meal
recipes.removeShapeless(BoneMeal * 3, [SmallBoneS]);
recipes.removeShapeless(BoneMeal * 6, [MediumBoneS]);
recipes.removeShapeless(BoneMeal * 12, [LargeBoneS]);

// --- Empty Jar
recipes.remove(EmptyJar);



// *======= Adding Back Recipes =======*


// --- Mud
Compressor.addRecipe(Mud, MudBall * 4);

// --- Sand
Macerator.addRecipe(Sand, Quicksand);

// --- Ash Block
Compressor.addRecipe(AshBlock, AshPile * 4);
// - Alternate Recipe
Compressor.addRecipe(AshBlock, GtAshPile * 4);

// --- Flesh
Compressor.addRecipe(Flesh, ChunkOfFlesh * 4);

// --- Dart
recipes.addShapedMirrored(Dart, [
[null, Thorns, null],
[null, Stick, null],
[null, Feather, null]]);
// - Alternate Recipe
recipes.addShaped(Dart * 2, [
[Thorns, null, Thorns],
[Stick, null, Stick],
[Feather, null, Feather]]);

// --- Celestial Crystal
Compressor.addRecipe(CelestialCrystal, CelesCrystalShard * 4);

// --- Block Of Amethyst
Compressor.addRecipe(AmethystBlock, EnderAmethyst * 9);
// - Alternate Recipe
Compressor.addRecipe(AmethystBlock, Amethyst * 9);

// --- Block Of Ruby
Compressor.addRecipe(RubyBlock, BOPRuby * 9);
// - Alternate Recipe
Compressor.addRecipe(RubyBlock, Ruby * 9);

// --- Block Of Peridot
Compressor.addRecipe(PeridotBlock, BOPPeridot * 9);

// --- Block Of Topaz
Compressor.addRecipe(TopazBlock, BOPTopaz * 9);
// - Alternate Recipe
Compressor.addRecipe(TopazBlock, Topaz * 9);

// --- Block Of Tanzanite
Compressor.addRecipe(TanzaniteBlock, BOPTanzanite * 9);
// - Alternate Recipe
Compressor.addRecipe(TanzaniteBlock, Tanzanite * 9);

// --- Block Of Malachite
Compressor.addRecipe(MalachiteBlock, BOPMalachite * 9);

// --- Block Of Sapphire
Compressor.addRecipe(SapphireBlock, BOPSapphire * 9);
// - Alternate Recipe
Compressor.addRecipe(SapphireBlock, Sapphire * 9);

// --- Block Of Amber
Compressor.addRecipe(AmberBlock, BOPAmber * 9);
// - Alternate Recipe
Compressor.addRecipe(AmberBlock, Amber * 9);

// --- Honeycomb Block
Compressor.addRecipe(HoneycombBlock, Honeycomb * 4);

// --- Filled Honeycomb Block
Compressor.addRecipe(FilledHoneycombBlock, FilledHoneycomb * 4);

// --- Bone Meal
Macerator.addRecipe(BoneMeal * 2, SmallBoneS);
Macerator.addRecipe(BoneMeal * 4, MediumBoneS);
Macerator.addRecipe(BoneMeal * 8, LargeBoneS);

// --- Empty Jar
recipes.addShapeless(EmptyJar, [EmptyBottle]);



// #======= Other Stuff =======#


// --- Barley Oredicting
oreDict.cropBarley.add(<BiomesOPlenty:plants:6>);