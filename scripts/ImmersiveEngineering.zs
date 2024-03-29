import minetweaker.item.IItemStack;

// ImmersiveEngineering.zs
// By Rizinq for BIKE Modded S4

print("Running ImmersiveEngineering.zs");

////////////////////////
// Variables
////////////////////////

var Plates as IItemStack[] = [
    <ImmersiveEngineering:metal:30>, # iron
    <ImmersiveEngineering:metal:32>, # aluminum
    <ImmersiveEngineering:metal:33>, # lead
    <ImmersiveEngineering:metal:36>, # constantan
    <ImmersiveEngineering:metal:38>  # steel
];

var Hammer = <ImmersiveEngineering:tool>;

////////////////////////
// Recipe Removal
////////////////////////

for item in Plates {
    recipes.removeShapeless(item);
}

mods.thermalexpansion.Smelter.removeRecipe(<ImmersiveEngineering:metal:4>, <ImmersiveEngineering:metal>);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShapeless(<ImmersiveEngineering:metal:30>, [Hammer, <minecraft:iron_ingot>, <minecraft:iron_ingot>]);
recipes.addShapeless(<ImmersiveEngineering:metal:32>, [Hammer, <ore:ingotAluminum>, <ore:ingotAluminum>]);
recipes.addShapeless(<ImmersiveEngineering:metal:33>, [Hammer, <ore:ingotLead>, <ore:ingotLead>]);
recipes.addShapeless(<ImmersiveEngineering:metal:36>, [Hammer, <ore:ingotConstantan>, <ore:ingotConstantan>]);
recipes.addShapeless(<ImmersiveEngineering:metal:38>, [Hammer, <ore:ingotSteel>, <ore:ingotSteel>]);

mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:64>, <ThermalFoundation:material:68>, <ImmersiveEngineering:metal:5> * 2);

print("Completed ImmersiveEngineering.zs");