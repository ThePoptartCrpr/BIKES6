// SimplyJetpacks.zs
// By Rizinq for BIKE Modded S4

print("Running SimplyJetpacks.zs");

////////////////////////
// Variables
////////////////////////

var LeatherStrap = <simplyjetpacks:components>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(LeatherStrap);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(LeatherStrap, [
    [null, null, null],
    [<minecraft:leather>, <ImmersiveEngineering:metal:30>, <minecraft:leather>],
    [<minecraft:leather>, <ImmersiveEngineering:metal:30>, <minecraft:leather>]
]);

print("Completed SimplyJetpacks.zs");