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
var SacredRubber = <MineFactoryReloaded:rubberwood.sapling:1>;
var EnchantedSacredRubber = <MineFactoryReloaded:rubberwood.sapling:3>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(Machineblock);

vanilla.loot.removeChestLoot("pyramidJungleChest", SacredRubber);

SacredRubber.addTooltip(format.darkRed("Disabled."));
SacredRubber.addTooltip(format.darkRed("...for fairly obvious reasons."));
EnchantedSacredRubber.addTooltip(format.darkRed("Disabled."));
EnchantedSacredRubber.addTooltip(format.darkRed("...for fairly obvious reasons."));

////////////////////////
// Recipe Addition
////////////////////////

mods.buildcraft.AssemblyTable.addRecipe(Machineblock, 800000, [Magnesium, Plastic]);

print("Completed Minefactory.zs");