// LootTables.zs
// By Ghalid for BIKE Modded S6

print("Running LootTables.zs");

////////////////////////
// Loot Removal
////////////////////////

vanilla.loot.removeChestLoot("pyramidJungleChest", <Botania:overgrowthSeed>);
vanilla.loot.removeChestLoot("strongholdCorridor", <Botania:overgrowthSeed>);
vanilla.loot.removeChestLoot("dungeonChest", <Botania:overgrowthSeed>);
vanilla.loot.removeChestLoot("mineshaftCorridor", <Botania:overgrowthSeed>);
vanilla.loot.removeChestLoot("pyramidDesertyChest", <Botania:overgrowthSeed>);

////////////////////////
// Loot Addition
////////////////////////

vanilla.loot.addChestLoot("pyramidJungleChest", <Botania:overgrowthSeed>.weight(1), 1, 1);
vanilla.loot.addChestLoot("strongholdCorridor", <Botania:overgrowthSeed>.weight(1), 1, 1);
vanilla.loot.addChestLoot("dungeonChest", <Botania:overgrowthSeed>.weight(1), 1, 1);
vanilla.loot.addChestLoot("mineshaftCorridor", <Botania:overgrowthSeed>.weight(1), 1, 1);
vanilla.loot.addChestLoot("pyramidDesertyChest", <Botania:overgrowthSeed>.weight(1), 1, 1);

print("Completed LootTables.zs");