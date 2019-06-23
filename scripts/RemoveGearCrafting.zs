import minetweaker.item.IItemStack;

// RemoveGearCrafting.zs
// By Rizinq for BIKE Modded S4

print("Running RemoveGearCrafting.zs");

////////////////////////
// Variables
////////////////////////

var Gears as IItemStack[] = [
    <ThermalFoundation:material:12>,
    <ThermalFoundation:material:13>,
    <ThermalFoundation:material:128>,
    <ThermalFoundation:material:129>,
    <ThermalFoundation:material:130>,
    <ThermalFoundation:material:131>,
    <ThermalFoundation:material:132>,
    <ThermalFoundation:material:133>,
    <ThermalFoundation:material:134>,
    <ThermalFoundation:material:136>,
    <ThermalFoundation:material:135>,
    <ThermalFoundation:material:137>,
    <ThermalFoundation:material:138>,
    <ThermalFoundation:material:139>,
    <ThermalFoundation:material:140>
];

////////////////////////
// Recipe Removal
////////////////////////

for item in Gears {
    recipes.removeShaped(item);
    recipes.removeShapeless(item);
}

////////////////////////
// Recipe Addition
////////////////////////

print("Completed RemoveGearCrafting.zs");