import mods.mfr.MiningLaser;
import minetweaker.item.IItemStack;

// RemovePlanetaryOres.zs
// By Rizinq for BIKE Modded S4

print("Running RemovePlanetaryOres.zs");

////////////////////////
// Variables
////////////////////////

var Ores as IItemStack[] = [
    <ExtraPlanets:tile.ceres:6>,
    <ExtraPlanets:tile.saturn:6>,
    <ExtraPlanets:tile.neptune:6>,
    <ExtraPlanets:tile.pluto:6>
];

////////////////////////
// Recipe Removal
////////////////////////

for item in Ores {
    mods.mfr.MiningLaser.removeOre(item);
}

////////////////////////
// Recipe Addition
////////////////////////

print("Completed RemovePlanetaryOres.zs");