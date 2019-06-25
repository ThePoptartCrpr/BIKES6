// Avaritia.zs
// By Rizinq for BIKE Modded S4 / jamzs for BIKE Modded S6

print("Running Avaritia.zs");

////////////////////////
// Variables
////////////////////////

var Catalyst = <Avaritia:Resource:5>;
var CrystalMatrix = <Avaritia:Resource:1>;
var DireCraft = <Avaritia:Dire_Crafting>;
var BotaniaDice = <Botania:dice>;

////////////////////////
// Recipe Removal
////////////////////////

mods.avaritia.ExtremeCrafting.remove(Catalyst);
recipes.remove(DireCraft);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(DireCraft, [
    [CrystalMatrix, BotaniaDice, CrystalMatrix],
    [<ExtraPlanets:tier11Items:4>, <Avaritia:Triple_Craft>, <ExtraPlanets:tier11Items>],
    [<ExtraPlanets:tier11Items:3>, <ExtraPlanets:tier11Items:2>, <ExtraPlanets:tier11Items:1>]
]);

mods.avaritia.ExtremeCrafting.addShapeless(Catalyst, [
    <Avaritia:Ultimate_Stew>, <Avaritia:Cosmic_Meatballs>, <Avaritia:Endest_Pearl>, <extracells:storage.component:3>, <appliedenergistics2:item.ItemMultiMaterial:47>,
    <ExtraUtilities:block_bedrockium>, <ExtraUtilities:decorativeBlock1:5>, <Botania:storage:1>, <Botania:manaResource:14>, <DraconicEvolution:draconicBlock>,
    <BigReactors:BRIngot:8>, <TConstruct:MetalBlock:2>, <ProjectE:item.pe_matter:1>, <MineFactoryReloaded:pinkslime:1>, <eternalsingularity:eternal_singularity>,
    <ExtraPlanets:tier11Items>, <ExtraPlanets:tier11Items:1>, <ExtraPlanets:tier11Items:2>, <ExtraPlanets:tier11Items:3>, <ExtraPlanets:tier11Items:4>
]);

print("Completed Avaritia.zs");