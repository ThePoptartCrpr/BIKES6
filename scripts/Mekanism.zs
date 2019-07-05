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

var DigiMiner = <Mekanism:MachineBlock:4>;
var Robit = <Mekanism:Robit>;

////////////////////////
// Recipe Removal
////////////////////////

mods.mekanism.chemical.Injection.removeRecipe(<Mekanism:OtherDust:3>);

mods.mekanism.Infuser.removeRecipe(<Mekanism:ReinforcedAlloy>);
mods.mekanism.Infuser.removeRecipe(<Mekanism:AtomicAlloy>);

recipes.remove(<Mekanism:ControlCircuit:1>);
recipes.remove(<Mekanism:ControlCircuit:2>);
recipes.remove(<Mekanism:ControlCircuit:3>);

recipes.remove(Robit);
recipes.remove(DigiMiner);

////////////////////////
// Recipe Addition
////////////////////////

// Alloys
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ReinforcedAlloy>, 200000, [<Mekanism:EnrichedAlloy> * 2, <Mekanism:OtherDust:0>]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:AtomicAlloy>, 400000, [<Mekanism:ReinforcedAlloy> * 2, <Mekanism:OtherDust:5>]);

// Control Circuits
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ControlCircuit:1>, 200000, [<Mekanism:EnrichedAlloy> * 2, <Mekanism:ControlCircuit>, <ExtraPlanets:ingotMercury> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ControlCircuit:2>, 400000, [<Mekanism:ReinforcedAlloy> * 2, <Mekanism:ControlCircuit:1>]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ControlCircuit:3>, 800000, [<Mekanism:AtomicAlloy> * 2, <Mekanism:ControlCircuit:2>]);

// Digital Miner
recipes.addShaped(Robit, [
    [null, <Thaumcraft:ItemResource:16>, null],
    [<Mekanism:EnergyTablet>, <Mekanism:AtomicAlloy>, <Mekanism:EnergyTablet>],
    [<Mekanism:Ingot>, <Mekanism:MachineBlock:13>, <Mekanism:Ingot>]
]);
recipes.addShaped(DigiMiner, [
    [<Mekanism:AtomicAlloy>, <Mekanism:ControlCircuit:3>, <Mekanism:AtomicAlloy>],
    [<witchery:filteredfumefunnel>, Robit, <witchery:filteredfumefunnel>],
    [<Mekanism:TeleportationCore>, Casing, <Mekanism:TeleportationCore>]
]);

// Fix Broken Recipe
mods.mekanism.chemical.Injection.addRecipe(<minecraft:gunpowder>, <gas:hydrogenchloride>, <ThermalFoundation:material:16>);

print("Completed Mekanism.zs");