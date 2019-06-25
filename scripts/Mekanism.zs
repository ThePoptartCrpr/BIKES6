import mods.buildcraft.AssemblyTable;

// Mekanism.zs
// By Rizinq for BIKE Modded S4

print("Running Mekanism.zs");

////////////////////////
// Variables
////////////////////////

var BlueGem = <ExtraPlanets:tier8Items:6>;
var Zinc = <ExtraPlanets:tier8Items:5>;

var Casing = <Mekanism:BasicBlock:8>;

var Infuser = <Mekanism:MachineBlock:8>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(Casing);
recipes.remove(Infuser);
mods.mekanism.chemical.Injection.removeRecipe(<Mekanism:OtherDust:3>);

////////////////////////
// Recipe Addition
////////////////////////

mods.buildcraft.AssemblyTable.addRecipe(Casing, 400000, [<TConstruct:materials:16> * 4, <BuildCraft|Silicon:redstoneChipset:4>, <BuildCraft|Silicon:redstoneChipset:6>, <BuildCraft|Silicon:redstoneCrystal>, <ore:ingotOsmium>]);

recipes.addShaped(Infuser, [
    [<ore:ingotOsmium>, <minecraft:furnace>, <ore:ingotOsmium>],
    [BlueGem, Zinc, BlueGem],
    [<ore:ingotOsmium>, <minecraft:furnace>, <ore:ingotOsmium>]
]);

mods.mekanism.chemical.Injection.addRecipe(<minecraft:gunpowder>, <gas:hydrogenchloride>, <ThermalFoundation:material:16>);

print("Completed Mekanism.zs");