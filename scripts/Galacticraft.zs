// Galacticraft.zs
// By Rizinq for BIKE Modded S4

print("Running Galacticraft.zs");

////////////////////////
// Variables
////////////////////////

var NoseCone = <GalacticraftCore:item.noseCone>;
var HeavyPlate = <GalacticraftCore:item.heavyPlating>;
var Torch = <minecraft:redstone_torch>;
var VibrantAlloy = <EnderIO:itemAlloy:2>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(NoseCone);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(NoseCone, [
    [null, Torch, null],
    [null, HeavyPlate, null],
    [HeavyPlate, VibrantAlloy, HeavyPlate]
]);

print("Completed Galacticraft.zs");