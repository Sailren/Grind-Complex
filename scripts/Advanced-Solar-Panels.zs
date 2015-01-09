// ******** Created by Arch-Nihil ********



// *======= Importing Stuff =======*


import mods.nei.NEI;
import mods.gregtech.Assembler;
import mods.ic2.Compressor;
import mods.ic2.Macerator;



// *======= Variables =======*


val Sunnarium = <AdvancedSolarPanel:asp_crafting_items>;
val SunnariumPart = <AdvancedSolarPanel:asp_crafting_items:9>;
val SunnariumDust = <gregtech:gt.metaitem.01:2318>;
val TinySunnariumDust = <gregtech:gt.metaitem.01:318>;
val SunnariumAlloy = <AdvancedSolarPanel:asp_crafting_items:1>;
val IrradiantUranium = <AdvancedSolarPanel:asp_crafting_items:2>;
val EnrichedSunnarium = <AdvancedSolarPanel:asp_crafting_items:3>;
val EnrichedSunnariumAlloy = <AdvancedSolarPanel:asp_crafting_items:4>;
val IrradiantPane = <AdvancedSolarPanel:asp_crafting_items:5>;
val IridiumIronPlate = <AdvancedSolarPanel:asp_crafting_items:6>;
val MTCore = <AdvancedSolarPanel:asp_crafting_items:12>;

val AdvSolarHelm = <AdvancedSolarPanel:advanced_solar_helmet>;
val HybridSolarHelm = <AdvancedSolarPanel:hybrid_solar_helmet>;
val UltimateSolarHelm = <AdvancedSolarPanel:ultimate_solar_helmet>;

val AdvSolarPanel = <AdvancedSolarPanel:BlockAdvSolarPanel>;
val HybridSolarPanel = <AdvancedSolarPanel:BlockAdvSolarPanel:1>;
val UltimateSolarPanel = <AdvancedSolarPanel:BlockAdvSolarPanel:2>;
val QuantumSolarPanel = <AdvancedSolarPanel:BlockAdvSolarPanel:3>;

val IronPlate = <ore:plateAnyIron>;
val IridiumPlate = <ore:plateIridium>;

val KanthalCable2x = <ore:cableGt02Kanthal>;
val TungstenCable2x = <ore:cableGt02Tunsten>;
val PlatinumCable2x = <ore:cableGt02Platinum>;

val AdvCircuit = <ore:circuitAdvanced>;
val DControlCircuit = <ore:circuitElite>;
val EFlowCircuit = <ore:circuitMaster>;
val LapotronicEOrb = <ore:circuitUltimate>;

val NeutronReflector = <IC2:reactorReflectorThick>;
val NanoHelm = <IC2:itemArmorNanoHelmet:*>;

val Wrench = <ore:craftingToolWrench>;



// *======= Removing Recipes =======*


// --- Sunnarium
recipes.remove(Sunnarium);

// --- Sunnarium Alloy
recipes.remove(SunnariumAlloy);

// --- Irradiant Uranium
recipes.remove(IrradiantUranium);

// --- Enriched Sunnarium
recipes.remove(EnrichedSunnarium);

// --- Enriched Sunnarium Alloy
recipes.remove(EnrichedSunnariumAlloy);

// --- Iridium Iron Plate
recipes.remove(IridiumIronPlate);

// --- Molecular Transformer Core
recipes.remove(MTCore);

// --- Advanced Solar Helmet
recipes.remove(AdvSolarHelm);

// --- Hybrid Solar Helmet
recipes.remove(HybridSolarHelm);

// --- Ultimate Solar Helmet
recipes.remove(UltimateSolarHelm);



// *======= Adding Back Recipes =======*


// --- Sunnarium Dust
Macerator.addRecipe(SunnariumDust, Sunnarium);

// --- Tiny Pile Of Sunnarium Dust
Macerator.addRecipe(TinySunnariumDust, SunnariumPart);

// --- Iridium-Iron Plate
recipes.addShaped(IridiumIronPlate, [
[IronPlate, IronPlate, IronPlate],
[IronPlate, IridiumPlate, IronPlate],
[IronPlate, IronPlate, IronPlate]]);
// - Alternate Recipe
Assembler.addRecipe(IridiumIronPlate, <gregtech:gt.metaitem.01:17084>, <gregtech:gt.metaitem.01:17032> * 8,  200, 32);

// --- Sunnarium
Compressor.addRecipe(Sunnarium, SunnariumPart * 9);
// - Alternate Recipe
Compressor.addRecipe(Sunnarium, SunnariumDust);

// --- Molecular Transformer Core
recipes.addShaped(MTCore, [
[NeutronReflector, IrradiantPane, NeutronReflector],
[IrradiantPane, Wrench, IrradiantPane],
[NeutronReflector, IrradiantPane, NeutronReflector]]);

// --- Advanced Solar Helmet
recipes.addShaped(AdvSolarHelm, [
[DControlCircuit, AdvSolarPanel, AdvCircuit],
[KanthalCable2x, NanoHelm, KanthalCable2x],
[AdvCircuit, Wrench, DControlCircuit]]);
// - Alternate Recipe
recipes.addShaped(AdvSolarHelm, [
[DControlCircuit, AdvSolarPanel, DControlCircuit],
[KanthalCable2x, NanoHelm, KanthalCable2x],
[DControlCircuit, Wrench, AdvCircuit]]);

// --- Hybrid Solar Helmet
recipes.addShaped(HybridSolarHelm, [
[EFlowCircuit, HybridSolarPanel, DControlCircuit],
[TungstenCable2x, AdvSolarHelm, TungstenCable2x],
[DControlCircuit, Wrench, EFlowCircuit]]);
// - Alternate Recipe
recipes.addShaped(HybridSolarHelm, [
[DControlCircuit, HybridSolarPanel, EFlowCircuit],
[TungstenCable2x, AdvSolarHelm, TungstenCable2x],
[EFlowCircuit, Wrench, DControlCircuit]]);

// --- Ultimate Solar Helmet
recipes.addShaped(UltimateSolarHelm, [
[LapotronicEOrb, UltimateSolarPanel, EFlowCircuit],
[PlatinumCable2x, HybridSolarHelm, PlatinumCable2x],
[EFlowCircuit, Wrench, LapotronicEOrb]]);
// - Alternate Recipe
recipes.addShaped(UltimateSolarHelm, [
[EFlowCircuit, UltimateSolarPanel, LapotronicEOrb],
[PlatinumCable2x, HybridSolarHelm, PlatinumCable2x],
[LapotronicEOrb, Wrench, EFlowCircuit]]);



// #======= Hiding Stuff =======#

