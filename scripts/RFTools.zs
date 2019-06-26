import minetweaker.item.IItemStack;

// RFTools.zs
// By Ghalid for BIKE Modded S6

print("Running RFTools.zs");

////////////////////////
// Variables
////////////////////////

var DimensionBuilder = <rftools:dimensionBuilderBlock>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.removeShaped(<rftools:dimensionBuilderBlock>);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(<rftools:dimensionBuilderBlock>, [
    [<minecraft:ender_pearl>, <Botania:dice>, <minecraft:ender_pearl>],
    [<ExtraPlanets:tier8Items:6>, <rftools:machineFrame:*>, <ExtraPlanets:tier8Items:6>],
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
]);

print("Completed RFTools.zs");
