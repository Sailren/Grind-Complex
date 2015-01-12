// ******** Created by Arch-Nihil ********



// *======= Importing Stuff =======*


import mods.nei.NEI;
import mods.gregtech.BlastFurnace;
import mods.gregtech.Lathe;
import mods.gregtech.Centrifuge;
import mods.ic2.Compressor;
import mods.gregtech.ImplosionCompressor;
import mods.gregtech.VacuumFreezer;



// *======= Variables =======*


val Worktable = <RotaryCraft:rotarycraft_item_machine:75>;
val BFurnace = <RotaryCraft:rotarycraft_item_machine:45>;

val HotHSLAIngot = <adc:ItemHotHSLAIngot>;
val HSLAIngot = <ore:ingotHSLA>;
val HotHSHAIngot = <adc:ItemHotHSHAIngot>;
val HSHAIngot = <RotaryCraft:rotarycraft_item_shaftcraft:1>;
val HSLAScrap = <RotaryCraft:rotarycraft_item_shaftcraft:9>;
val HSHAScrap = <RotaryCraft:rotarycraft_item_shaftcraft:10>;
val HSLAPlate = <ore:plateHSLA>;
val HSLAScrew = <ore:screwHSLA>;
val HSLABolt = <ore:boltHSLA>;
val HSLARing = <ore:ringHSLA>;
val HSLARod = <ore:stickHSLA>;
val HSLAGear = <ore:gearHSLA>;
val HSLASmallGear = <ore:gearSmallGtHSLA>;
val HSLAFoil = <ore:foilHSLA>;
val HSLABlock = <RotaryCraft:rotarycraft_block_deco>;

val BasePanel = <RotaryCraft:rotarycraft_item_shaftcraft>;
val HSLAShaft = <RotaryCraft:rotarycraft_item_shaftcraft:2>;

val RedSteelNugget = <ore:nuggetRedSteel>;
val BlueSteelNugget = <ore:nuggetBlueSteel>;
val BlackSteelNugget = <ore:nuggetBlackSteel>;
val SSteelNugget = <ore:nuggetStainlessSteel>;
val TSteelNugget = <ore:nuggetTungstenSteel>;
val IridiumNugget = <ore:nuggetIridium>;
val OsmiumNugget = <ore:nuggetOsmium>;
val NaquadahNugget = <ore:nuggetNaquadah>;
val NeutroniumNugget = <ore:nuggetNeutronium>;

val DarkAshes = <gregtech:gt.metaitem.01:2816>;
val PureSteelIngot = <gregtech:gt.metaitem.01:11305>;



// *======= Removing Recipes =======*


// --- Blast Furnace
recipes.remove(BFurnace);

// --- Worktable
recipes.remove(Worktable);

// --- HSLA Steel Scrap
recipes.remove(HSLAScrap);

// --- HSHA Steel Scrap
recipes.remove(HSHAScrap);
furnace.remove(<*>, HSHAScrap);



// *======= Adding Back Recipes =======*


// --- Blast Furnace
recipes.addShaped(BFurnace, [
[BFurnace, BFurnace, BFurnace],
[BFurnace, BFurnace, BFurnace],
[BFurnace, BFurnace, BFurnace]]);

// --- Worktable
recipes.addShaped(Worktable, [
[Worktable, Worktable, Worktable],
[Worktable, Worktable, Worktable],
[Worktable, Worktable, Worktable]]);

// --- HSLA Steel Scrap
recipes.addShaped(HSLAScrap, [
[TSteelNugget, RedSteelNugget, TSteelNugget],
[BlackSteelNugget, SSteelNugget, BlackSteelNugget],
[TSteelNugget, BlueSteelNugget, TSteelNugget]]);
// - Alternate Recipe
recipes.addShaped(HSLAScrap, [
[TSteelNugget, BlueSteelNugget, TSteelNugget],
[BlackSteelNugget, SSteelNugget, BlackSteelNugget],
[TSteelNugget, RedSteelNugget, TSteelNugget]]);
// -
recipes.addShaped(HSLAScrap, [
[TSteelNugget, BlackSteelNugget, TSteelNugget],
[RedSteelNugget, SSteelNugget, BlueSteelNugget],
[TSteelNugget, BlackSteelNugget, TSteelNugget]]);
// -
recipes.addShaped(HSLAScrap, [
[TSteelNugget, BlackSteelNugget, TSteelNugget],
[BlueSteelNugget, SSteelNugget, RedSteelNugget],
[TSteelNugget, BlackSteelNugget, TSteelNugget]]);

// --- HSHA Steel Scrap
recipes.addShaped(HSHAScrap, [
[IridiumNugget, NeutroniumNugget, IridiumNugget],
[OsmiumNugget, TSteelNugget, OsmiumNugget],
[IridiumNugget, NaquadahNugget, IridiumNugget]]);
// - Alternate Recipe
recipes.addShaped(HSHAScrap, [
[IridiumNugget, NaquadahNugget, IridiumNugget],
[OsmiumNugget, TSteelNugget, OsmiumNugget],
[IridiumNugget, NeutroniumNugget, IridiumNugget]]);
// -
recipes.addShaped(HSHAScrap, [
[IridiumNugget, OsmiumNugget, IridiumNugget],
[NeutroniumNugget, TSteelNugget, NaquadahNugget],
[IridiumNugget, OsmiumNugget, IridiumNugget]]);
// -
recipes.addShaped(HSHAScrap, [
[IridiumNugget, OsmiumNugget, IridiumNugget],
[NaquadahNugget, TSteelNugget, NeutroniumNugget],
[IridiumNugget, OsmiumNugget, IridiumNugget]]);

// --- Hot HSHA Steel Ingot
BlastFurnace.addRecipe([HotHSHAIngot, DarkAshes * 4], HSHAScrap, HSLAScrap, 1200, 8192, 3200);

// --- HSHA Steel Ingot
VacuumFreezer.addRecipe(HSHAIngot, HotHSHAIngot, 2000);

// --- Hot HSLA Steel Ingot
BlastFurnace.addRecipe([HotHSLAIngot, DarkAshes * 8], HSHAIngot, PureSteelIngot, 1000, 16384, 3400);

// --- HSLA Ingot
VacuumFreezer.addRecipe(<gregtech:gt.metaitem.01:11322>, HotHSLAIngot, 4000);

// #======= Hiding Stuff =======#


// --- Blast Furnace
NEI.hide(BFurnace);

// --- Worktable
NEI.hide(Worktable);



// #======= Renaming Stuff =======#


// --- HSHA Steel Scrap
NEI.overrideName(HSHAScrap, "HSHA Steel Scrap");

// --- HSLA Steel Scrap
NEI.overrideName(HSLAScrap, "HSLA Steel Scrap");

// --- HSHA Steel
NEI.overrideName(HSHAIngot, "HSHA Steel Ingot");