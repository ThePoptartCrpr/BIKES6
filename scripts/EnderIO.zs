import mods.thermalexpansion.Transposer;

// EnderIO.zs
// By Rizinq for BIKE Modded S4

print("Running EnderIO.zs");

////////////////////////
// Variables
////////////////////////

var BasicCapacitor = <EnderIO:itemBasicCapacitor>;
var DoubleCapacitor = <EnderIO:itemBasicCapacitor:1>;
var OctadicCapacitor = <EnderIO:itemBasicCapacitor:2>;

var GoldNugget = <ore:nuggetGold>;
var Redstone = <minecraft:redstone>;
var RedstoneBlock = <minecraft:redstone_block>;
var IronBars = <minecraft:iron_bars>;
var Flint = <minecraft:flint>;
var Piston = <minecraft:piston>;
var Cauldron = <minecraft:cauldron>;
var Bucket = <minecraft:bucket>;
var IronIngot = <minecraft:iron_ingot>;
var Manasteel = <Botania:manaResource>;

var Chassis = <EnderIO:itemMachinePart>;
var AlloySmelter = <EnderIO:blockAlloySmelter>;

var SAGMill = <EnderIO:blockSagMill>;
var Vat = <EnderIO:blockVat>;

var FluidTank = <EnderIO:blockTank>;

var BasicBank = <EnderIO:blockCapBank:1>.withTag({type: "SIMPLE", storedEnergyRF: 0});

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(BasicCapacitor);
recipes.remove(DoubleCapacitor);
recipes.remove(OctadicCapacitor);

recipes.removeShaped(BasicBank);

recipes.removeShaped(Chassis);

recipes.removeShaped(AlloySmelter);

recipes.removeShaped(SAGMill);
recipes.removeShaped(Vat);

recipes.removeShaped(FluidTank);

////////////////////////
// Recipe Addition
////////////////////////

// Capacitors
recipes.addShaped(BasicCapacitor, [
    [null, GoldNugget, Redstone],
    [GoldNugget, Manasteel, GoldNugget],
    [Redstone, GoldNugget, null]
]);
mods.thermalexpansion.Transposer.addFillRecipe(2500, BasicCapacitor, DoubleCapacitor, <liquid:cloud_seed_concentrated> * 500);
mods.thermalexpansion.Transposer.addFillRecipe(10000, DoubleCapacitor, OctadicCapacitor, <liquid:steel.molten> * 1000);

// Capacitor Banks
recipes.addShaped(BasicBank, [
    [Manasteel, BasicCapacitor, Manasteel],
    [BasicCapacitor, RedstoneBlock, BasicCapacitor],
    [Manasteel, BasicCapacitor, Manasteel]
]);

// Chassis
recipes.addShaped(Chassis, [
    [IronBars, Manasteel, IronBars],
    [Manasteel, BasicCapacitor, Manasteel],
    [IronBars, Manasteel, IronBars]
]);

// Fluid Tank
recipes.addShaped(FluidTank, [
    [IronIngot, Bucket, IronIngot],
    [IronBars, <ore:glass>, IronBars],
    [IronIngot, IronBars, IronIngot]
]);

// Earlygame Machines
recipes.addShaped(SAGMill, [
    [Flint, Piston, Flint],
    [Manasteel, Chassis, Manasteel],
    [IronBars, Piston, IronBars]
]);
recipes.addShaped(Vat, [
    [Manasteel, Cauldron, Manasteel],
    [FluidTank, Chassis, FluidTank],
    [IronIngot, <minecraft:furnace>, IronIngot]
]);

// Alloy Smelter
recipes.addShaped(AlloySmelter, [
    [IronIngot, DoubleCapacitor, IronIngot],
    [<minecraft:furnace>, Chassis, <minecraft:furnace>],
    [IronIngot, Cauldron, IronIngot]
]);

print("Completed EnderIO.zs");