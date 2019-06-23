// Botania.zs
// By Rizinq for BIKE Modded S4

print("Running Botania.zs");

////////////////////////
// Variables
////////////////////////

var ManaPool = <Botania:pool>;
var DilutedPool = <Botania:pool:2>;
var Livingrock = <Botania:livingrock>;
var Manapearl = <Botania:manaResource:1>;

var RunicAltar = <Botania:runeAltar>;
var ManasteelBlock = <Botania:storage>;
var Manadiamond = <Botania:manaResource:2>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(ManaPool);
recipes.remove(DilutedPool);

recipes.remove(RunicAltar);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(ManaPool, [
    [null, null, null],
    [Livingrock, Manapearl, Livingrock],
    [Livingrock, DilutedPool, Livingrock]
]);
recipes.addShaped(DilutedPool, [
    [null, null, null],
    [Livingrock, null, Livingrock],
    [Livingrock, Livingrock, Livingrock]
]);

recipes.addShaped(RunicAltar, [
    [Livingrock, ManasteelBlock, Livingrock],
    [Livingrock, Manapearl, Livingrock],
    [null, null, null]
]);

recipes.addShaped(RunicAltar, [
    [Livingrock, ManasteelBlock, Livingrock],
    [Livingrock, Manadiamond, Livingrock],
    [null, null, null]
]);

print("Completed Botania.zs");