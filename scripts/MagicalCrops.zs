import minetweaker.item.IItemStack;

// MagicalCrops.zs
// By Rizinq for BIKE Modded S4

print("Running MagicalCrops.zs");

////////////////////////
// Variables
////////////////////////

var StoneMK1 = <magicalcrops:magicalcrops_InfusionStoneWeak>;
var StoneMK2 = <magicalcrops:magicalcrops_InfusionStoneRegular>;
var StoneMK3 = <magicalcrops:magicalcrops_InfusionStoneStrong>;
var StoneMK4 = <magicalcrops:magicalcrops_InfusionStoneExtreme>;
var StoneMK5 = <magicalcrops:magicalcrops_InfusionStoneMaster>;

var MinicioBlock = <magicalcrops:essence_storage>;
var MinicioEssence = <magicalcrops:magicalcrops_1MinicioEssence>;

var Minicio = <magicalcrops:magicalcrops_1MinicioEssence>;
var Accio = <magicalcrops:magicalcrops_2AccioEssence>;
var Crucio = <magicalcrops:magicalcrops_3CrucioEssence>;
var Imperio = <magicalcrops:magicalcrops_4ImperioEssence>;
var Zivicio = <magicalcrops:magicalcrops_5ZivicioEssence>;

var MinicioSeed = <magicalcrops:magicalcrops_MinicioSeeds>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(StoneMK1);
recipes.remove(StoneMK2);
recipes.remove(StoneMK3);
recipes.remove(StoneMK4);
recipes.remove(StoneMK5);

recipes.removeShaped(MinicioSeed);

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
    [<magicalcrops:magicalcrops_1MinicioEssence>, <magicalcrops:magicalcrops_1MinicioEssence>, <magicalcrops:magicalcrops_1MinicioEssence>],
    [<magicalcrops:magicalcrops_1MinicioEssence>, <AgriCraft:seedDiamahlia>, <magicalcrops:magicalcrops_1MinicioEssence>],
    [<magicalcrops:magicalcrops_1MinicioEssence>, <magicalcrops:magicalcrops_1MinicioEssence>, <magicalcrops:magicalcrops_1MinicioEssence>]
]);

print("Completed MagicalCrops.zs");