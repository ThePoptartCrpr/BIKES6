// TwilightForest.zs
// By Ghalid for BIKE Modded S6

print("Running TwilightForest.zs");

////////////////////////
// Variables
////////////////////////

var Uncrafter = <TwilightForest:tile.TFUncraftingTable>;

////////////////////////
// Warning Tooltips
////////////////////////

Uncrafter.addTooltip(format.darkRed("Uncrafting function disabled due to exploit."));
Uncrafter.addTooltip(format.darkRed("Repairing and recrafting functions are enabled."));

print("Completed TwilightForest.zs");