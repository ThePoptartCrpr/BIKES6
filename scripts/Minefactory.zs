import mods.buildcraft.AssemblyTable;

// Minefactory.zs
// By Rizinq for BIKE Modded S4

print("Running Minefactory.zs");

////////////////////////
// Variables
////////////////////////

var Magnesium = <ExtraPlanets:tier6Items:5>;
var Machineblock = <MineFactoryReloaded:machineblock>;
var Plastic = <MineFactoryReloaded:plastic.sheet>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(Machineblock);

////////////////////////
// Recipe Addition
////////////////////////

mods.buildcraft.AssemblyTable.addRecipe(Machineblock, 800000, [Magnesium, Plastic]);

print("Completed Minefactory.zs");