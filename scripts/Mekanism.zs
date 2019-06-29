import mods.buildcraft.AssemblyTable;

// Mekanism.zs
// By Rizinq for BIKE Modded S4 / jamzs for BIKE Modded S6

print("Running Mekanism.zs");

////////////////////////
// Variables
////////////////////////

var BlueGem = <ExtraPlanets:tier8Items:6>;
var Zinc = <ExtraPlanets:tier8Items:5>;

var Casing = <Mekanism:BasicBlock:8>;

var Infuser = <Mekanism:MachineBlock:8>;

var BasicSmeltFactory = <Mekanism:MachineBlock:5>.withTag({recipeType: 0});
var BasicEnrichFactory = <Mekanism:MachineBlock:5>.withTag({recipeType: 1});
var BasicCrushFactory = <Mekanism:MachineBlock:5>.withTag({recipeType: 2});
var BasicCompressFactory = <Mekanism:MachineBlock:5>.withTag({recipeType: 3});
var BasicCombineFactory = <Mekanism:MachineBlock:5>.withTag({recipeType: 4});
var BasicPurifyFactory = <Mekanism:MachineBlock:5>.withTag({recipeType: 5});
var BasicInjectFactory = <Mekanism:MachineBlock:5>.withTag({recipeType: 6});
var BasicInfuseFactory = <Mekanism:MachineBlock:5>.withTag({recipeType: 7});

var BasicTierInstaller = <Mekanism:FactoryInstaller>;

////////////////////////
// Recipe Removal
////////////////////////

mods.mekanism.chemical.Injection.removeRecipe(<Mekanism:OtherDust:3>);

mods.mekanism.Infuser.removeRecipe(<Mekanism:ReinforcedAlloy>);
mods.mekanism.Infuser.removeRecipe(<Mekanism:AtomicAlloy>);

recipes.remove(<Mekanism:ControlCircuit:1>);
recipes.remove(<Mekanism:ControlCircuit:2>);
recipes.remove(<Mekanism:ControlCircuit:3>);

recipes.remove(<Mekanism:MachineBlock:5>);

////////////////////////
// Recipe Addition
////////////////////////

// Alloys
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ReinforcedAlloy>, 200000, [<Mekanism:EnrichedAlloy> * 2, <Mekanism:OtherDust:0>]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:AtomicAlloy>, 400000, [<Mekanism:ReinforcedAlloy> * 2, <Mekanism:OtherDust:5>]);

// Control Circuits
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ControlCircuit:1>, 200000, [<Mekanism:EnrichedAlloy> * 2, <Mekanism:ControlCircuit>, <GalacticraftMars:item.null:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ControlCircuit:2>, 400000, [<Mekanism:ReinforcedAlloy> * 2, <Mekanism:ControlCircuit:1>]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ControlCircuit:3>, 800000, [<Mekanism:AtomicAlloy> * 2, <Mekanism:ControlCircuit:2>]);

recipes.addShaped(BasicSmeltFactory, [
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>],
    [<ExtraPlanets:ingotMercury>, <Mekanism:MachineBlock:10>, <ExtraPlanets:ingotMercury>],
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>]
]);

recipes.addShaped(BasicEnrichFactory, [
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>],
    [<ExtraPlanets:ingotMercury>, <Mekanism:MachineBlock>, <ExtraPlanets:ingotMercury>],
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>]
]);

recipes.addShaped(BasicCrushFactory, [
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>],
    [<ExtraPlanets:ingotMercury>, <Mekanism:MachineBlock:3>, <ExtraPlanets:ingotMercury>],
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>]
]);

recipes.addShaped(BasicCompressFactory, [
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>],
    [<ExtraPlanets:ingotMercury>, <Mekanism:MachineBlock:1>, <ExtraPlanets:ingotMercury>],
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>]
]);

recipes.addShaped(BasicCombineFactory, [
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>],
    [<ExtraPlanets:ingotMercury>, <Mekanism:MachineBlock:2>, <ExtraPlanets:ingotMercury>],
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>]
]);

recipes.addShaped(BasicPurifyFactory, [
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>],
    [<ExtraPlanets:ingotMercury>, <Mekanism:MachineBlock:9>, <ExtraPlanets:ingotMercury>],
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>]
]);

recipes.addShaped(BasicInjectFactory, [
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>],
    [<ExtraPlanets:ingotMercury>, <Mekanism:MachineBlock2:3>, <ExtraPlanets:ingotMercury>],
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>]
]);

recipes.addShaped(BasicInfuseFactory, [
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>],
    [<ExtraPlanets:ingotMercury>, <Mekanism:MachineBlock:8>, <ExtraPlanets:ingotMercury>],
    [<minecraft:redstone>, <Mekanism:ControlCircuit>, <minecraft:redstone>]
]);

//recipes.addShaped(Infuser, [
    //[<ore:ingotOsmium>, <minecraft:furnace>, <ore:ingotOsmium>],
    //[BlueGem, Zinc, BlueGem],
    //[<ore:ingotOsmium>, <minecraft:furnace>, <ore:ingotOsmium>]
//]);

mods.mekanism.chemical.Injection.addRecipe(<minecraft:gunpowder>, <gas:hydrogenchloride>, <ThermalFoundation:material:16>);

print("Completed Mekanism.zs");