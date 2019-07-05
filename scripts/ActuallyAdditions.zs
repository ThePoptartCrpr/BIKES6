// ActuallyAdditions.zs
// By Ghalid for BIKE Modded S6

print("Running ActuallyAdditions.zs");

////////////////////////
// Variables
////////////////////////

var BasicCoil = <ActuallyAdditions:itemMisc:7>;
var AdvancedCoil = <ActuallyAdditions:itemMisc:8>;

var ImpregLeather = <witchery:ingredient:72>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(AdvancedCoil);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(AdvancedCoil, [
    [ImpregLeather, <minecraft:gold_ingot>, ImpregLeather],
    [<minecraft:gold_ingot>, BasicCoil, <minecraft:gold_ingot>],
    [ImpregLeather, <minecraft:gold_ingot>, ImpregLeather]
]);

print("Completed ActuallyAdditions.zs");