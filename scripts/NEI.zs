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

    <ImmersiveEngineering:ore:3>,

    <minecraft:flowing_lava>,
    <minecraft:flowing_water>,
    <minecraft:command_block_minecart>,
    <minecraft:command_block>,

    <witchery:coffinblock>,
    <witchery:spiritflowing>,
    <witchery:hollowtears>,
    <witchery:disease>,
    <witchery:tormentportal>,
    <witchery:spiritportal>,

    <simplyjetpacks:mysteriousPotato>,

    <rftools:proxyBlock>,
    <rftools:noTickInvisibleShieldBlock>,
    <rftools:noTickolidShieldBlock>,
    <rftools:supportBlock>,

    <magicalcrops:MinicioOre>,
    <magicalcrops:MinicioOreNether>,
    <magicalcrops:MinicioOreEnd>,

    <Botania:manaFlame>,

    <ActuallyAdditions:blockCanolaOil>,

    <BuildCraft|Energy:blockRedPlasma>,

    <EnderIO:blockLightNode>,
    <EnderIO:blockConduitBundle>,

    <TwilightForest:tile.TFPlant:3>,

    <chisel:aluminum_stairs.3>,
    <chisel:aluminum_stairs.3:8>,
    <chisel:aluminum_stairs.4>,
    <chisel:aluminum_stairs.4:8>,
    <chisel:aluminum_stairs.5>,
    <chisel:aluminum_stairs.5:8>,
    <chisel:aluminum_stairs.6>,
    <chisel:aluminum_stairs.6:8>,
    <chisel:aluminum_stairs.7>,
    <chisel:aluminum_stairs.7:8>,
    <chisel:amber>,

    <cfm:ItemDollar>,
    <cfm:ItemCrayfish>,

    <NetherOres:netherOresBlockHellfish>,

    <AWWayofTime:bloodLight>,
    <AWWayofTime:spectralContainer>,
    <AWWayofTime:blockSchemSaver>,

    <Aroma1997Core:wrenched>
];

////////////////////////
// NEI Hiding
////////////////////////

for item in Hide {
    NEI.hide(item);
}

NEI.addEntry(<magicalcrops:1MinicioEssence>.withTag({display: {Lore: ["§r§cMinicio ore generation and mob drops are disabled.", "§r§cUse NEI to find a different way to obtain it."]}}));
NEI.addEntry(<magicalcrops:MinicioSeeds>.withTag({display: {Lore: ["§r§cMinicio ore generation and mob drops are disabled.", "§r§cUse NEI to find a different way to obtain it."]}}));

print("Completed NEI.zs");