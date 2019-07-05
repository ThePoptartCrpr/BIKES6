import minetweaker.item.IItemStack;

// MagicalCrops.zs
// By Rizinq for BIKE Modded S4

print("Running MagicalCrops.zs");

////////////////////////
// Variables
////////////////////////

var StoneMK1 = <magicalcrops:InfusionStoneWeak>;
var StoneMK2 = <magicalcrops:InfusionStoneRegular>;
var StoneMK3 = <magicalcrops:InfusionStoneStrong>;
var StoneMK4 = <magicalcrops:InfusionStoneExtreme>;
var StoneMK5 = <magicalcrops:InfusionStoneMaster>;

var MinicioBlock = <magicalcrops:essence_storage>;
var MinicioEssence = <magicalcrops:1MinicioEssence>;

var MassZivico = <magicalcrops:essence_storage:5>;

var Minicio = <magicalcrops:1MinicioEssence>;
var Accio = <magicalcrops:2AccioEssence>;
var Crucio = <magicalcrops:3CrucioEssence>;
var Imperio = <magicalcrops:4ImperioEssence>;
var Zivicio = <magicalcrops:5ZivicioEssence>;

var MinicioSeed = <magicalcrops:MinicioSeeds>;

var DraconiumSeed = <magicalcrops:DraconiumSeeds>;

var SigNugget = <ThermalFoundation:material:106>;
var EnderiumBlock = <ThermalFoundation:Storage:12>;
var ZivicioIngot = <magicalcropsarmour:EssenceIngots:3>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(StoneMK1);
recipes.remove(StoneMK2);
recipes.remove(StoneMK3);
recipes.remove(StoneMK4);
recipes.remove(StoneMK5);

recipes.removeShaped(MinicioSeed);
recipes.removeShaped(ZivicioIngot);

recipes.removeShaped(DraconiumSeed);

////////////////////////
// Recipe Addition
////////////////////////

mods.botania.ElvenTrade.addRecipe(Minicio, [<ThermalFoundation:material:512>]);

mods.botania.ManaInfusion.addInfusion(StoneMK1, <Thaumcraft:ItemResource:16>, 200000);
mods.botania.ManaInfusion.addInfusion(StoneMK2, StoneMK1, 300000);
mods.botania.ManaInfusion.addInfusion(StoneMK3, StoneMK2, 400000);
mods.botania.ManaInfusion.addInfusion(StoneMK4, StoneMK3, 500000);
/* mods.botania.ManaInfusion.addInfusion(StoneMK5, StoneMK4, 1000000); */

mods.bloodmagic.Altar.addRecipe(StoneMK5, StoneMK4, 6, 225000);

recipes.addShaped(MinicioSeed, [
    [<magicalcrops:1MinicioEssence>, <magicalcrops:1MinicioEssence>, <magicalcrops:1MinicioEssence>],
    [<magicalcrops:1MinicioEssence>, <AgriCraft:seedDiamahlia>, <magicalcrops:1MinicioEssence>],
    [<magicalcrops:1MinicioEssence>, <magicalcrops:1MinicioEssence>, <magicalcrops:1MinicioEssence>]
]);

recipes.addShaped(ZivicioIngot, [
    [SigNugget, EnderiumBlock, SigNugget],
    [EnderiumBlock, Zivicio, EnderiumBlock],
    [SigNugget, EnderiumBlock, SigNugget]
]);

recipes.addShaped(DraconiumSeed, [
    [MassZivico, Zivicio, MassZivico],
    [Zivicio, MinicioSeed, Zivicio],
    [MassZivico, Zivicio, MassZivico]
]);

print("Completed MagicalCrops.zs");