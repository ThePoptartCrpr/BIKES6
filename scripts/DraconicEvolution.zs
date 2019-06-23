import mods.mekanism.chemical.Injection;
import mods.thermalexpansion.Furnace;
import mods.thermalexpansion.Smelter;
import mods.immersiveengineering.ArcFurnace;
import mods.projecte.PhiloStone;

// DraconicEvolution.zs
// By Rizinq for BIKE Modded S4

print("Running DraconicEvolution.zs");

////////////////////////
// Variables
////////////////////////

var DraconiumIngot = <DraconicEvolution:draconiumIngot>;
var DraconiumDust = <DraconicEvolution:draconiumDust>;
var Chipset = <BuildCraft|Silicon:redstoneChipset:7>;

var Core = <DraconicEvolution:draconicCore>;
var EnergyCore = <DraconicEvolution:draconiumEnergyCore>;

var Dragonstone = <Botania:manaResource:9>;
var CrystalRedstone = <BuildCraft|Silicon:redstoneCrystal>;

////////////////////////
// Recipe Removal
////////////////////////

// Draconium Ingot
furnace.remove(DraconiumIngot);
mods.thermalexpansion.Furnace.removeRecipe(DraconiumDust);
mods.thermalexpansion.Furnace.removeRecipe(<DraconicEvolution:draconiumBlend>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <DraconicEvolution:draconiumOre>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalExpansion:material:515>, <DraconicEvolution:draconiumOre>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:20>, <DraconicEvolution:draconiumOre>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:512>, <DraconicEvolution:draconiumOre>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, DraconiumDust * 2);
mods.immersiveengineering.ArcFurnace.removeRecipe(DraconiumIngot);
mods.projecte.PhiloStone.removePhiloSmelting(DraconiumIngot);
mods.projecte.PhiloStone.removePhiloSmelting(DraconiumIngot * 2);

// Cores
recipes.remove(Core);
recipes.remove(EnergyCore);

////////////////////////
// Recipe Addition
////////////////////////

// Draconium Ingot
mods.mekanism.chemical.Injection.addRecipe(DraconiumDust, <gas:hydrogenChloride>, DraconiumIngot * 2);

// Cores
recipes.addShaped(Core, [
    [Chipset, DraconiumIngot, Chipset],
    [DraconiumIngot, Dragonstone, DraconiumIngot],
    [Chipset, DraconiumIngot, Chipset]
]);

recipes.addShaped(EnergyCore, [
    [DraconiumIngot, CrystalRedstone, DraconiumIngot],
    [CrystalRedstone, Core, CrystalRedstone],
    [DraconiumIngot, CrystalRedstone, DraconiumIngot]
]);

print("Completed DraconicEvolution.zs");