import minetweaker.item.IItemStack;
import mods.nei.NEI;

// NEI.zs
// By Ghalid for BIKE Modded S6

print("Running NEI.zs");

////////////////////////
// Variables
////////////////////////

var Hide as IItemStack[] = [
    <ExtraPlanets:tier5Items:6>,
    <ExtraPlanets:nickelBattery>.withTag({electricity: 45000.0 as float}),

    <GalacticraftCore:tile.gcBlockCore:5>,
    <ImmersiveEngineering:ore>,
    <Mekanism:OreBlock:1>,
    <TConstruct:SearedBrick:3>,

    <GalacticraftCore:tile.gcBlockCore:7>,
    <ImmersiveEngineering:ore:1>,

    <GalacticraftCore:tile.gcBlockCore:6>,
    <Mekanism:OreBlock:2>,
    <TConstruct:SearedBrick:4>,

    <ImmersiveEngineering:ore:2>,

    <ImmersiveEngineering:ore:4>,

    <ImmersiveEngineering:ore:3>
];

////////////////////////
// NEI Hiding
////////////////////////

for item in Hide {
    NEI.hide(item);
}

NEI.hide(<magicalcrops:magicalcrops_1MinicioEssence>);
NEI.addEntry(<magicalcrops:magicalcrops_1MinicioEssence>.withTag({display: {Lore: ["§r§cMinicio ore generation and mob drops are disabled.", "§r§cUse NEI to find a different way to obtain it."]}}));
NEI.hide(<magicalcrops:magicalcrops_MinicioSeeds>);
NEI.addEntry(<magicalcrops:magicalcrops_MinicioSeeds>.withTag({display: {Lore: ["§r§cMinicio ore generation and mob drops are disabled.", "§r§cUse NEI to find a different way to obtain it."]}}));


print("Completed NEI.zs");