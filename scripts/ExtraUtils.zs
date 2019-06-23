import mods.buildcraft.AssemblyTable;
import mods.extraUtils.QED;

// ExtraUtils.zs
// By Rizinq for BIKE Modded S4

print("Running ExtraUtils.zs");

////////////////////////
// Variables
////////////////////////

var EnderfluxCrystal = <ExtraUtilities:endConstructor:2>;

var Quarry = <ExtraUtilities:enderQuarry>;
var Pump = <ExtraUtilities:enderThermicPump>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(EnderfluxCrystal);

recipes.remove(Quarry);
recipes.remove(Pump);

////////////////////////
// Recipe Addition
////////////////////////

mods.buildcraft.AssemblyTable.addRecipe(EnderfluxCrystal, 2000000, [<minecraft:ender_eye>, <ExtraUtilities:decorativeBlock1:1>, <BuildCraft|Silicon:redstoneCrystal>]);

mods.extraUtils.QED.addShapedRecipe(Quarry, [
    [<ExtraUtilities:decorativeBlock1:1>, <ore:treeSapling>, <ExtraUtilities:decorativeBlock1:1>],
    [<ExtraUtilities:decorativeBlock1:11>, <ExtraUtilities:decorativeBlock1:12>, <ExtraUtilities:decorativeBlock1:11>],
    [<ExtraUtilities:enderThermicPump>, <minecraft:diamond_pickaxe>, <ExtraUtilities:enderThermicPump>]
]);

mods.extraUtils.QED.addShapedRecipe(Pump, [
    [<ExtraUtilities:decorativeBlock1:1>, <minecraft:diamond_block>, <ExtraUtilities:decorativeBlock1:1>],
    [<minecraft:lava_bucket>, <minecraft:ender_eye>, <minecraft:water_bucket>],
    [<ExtraUtilities:decorativeBlock1:1>, <minecraft:diamond_pickaxe>, <ExtraUtilities:decorativeBlock1:1>]
]);

print("Completed ExtraUtils.zs");