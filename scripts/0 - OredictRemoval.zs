import minetweaker.item.IItemStack;
import mods.nei.NEI;

// 0 - OredictRemoval.zs
// By Ghalid for BIKE Modded S6
//
// Notes: The purpose of removing these materials from the Ore Dictionary
// is to prevent player confusion/annoyance when looking at NEI and seeing
// different types of unobtainable materials in crafting recipes, such as
// copper ingots from mods other than Thermal Expansion.

// TODO: also remove dusts, nuggets, etc

print("Running 0 - OredictRemoval.zs");

////////////////////////
// Variables
////////////////////////

var IronDust as IItemStack[] = [
    <ActuallyAdditions:itemDust>,
    <EnderIO:itemPowderIngot:1>,
    <ImmersiveEngineering:metal:8>,
    <Mekanism:Dust>
];

var GoldDust as IItemStack[] = [
    <ActuallyAdditions:itemDust:1>,
    <EnderIO:itemPowderIngot:2>,
    <ImmersiveEngineering:metal:9>,
    <Mekanism:Dust:1>
];

var CopperDust as IItemStack[] = [
    <EnderIO:itemPowderIngot:3>,
    <ImmersiveEngineering:metal:10>,
    <Mekanism:Dust:3>
];

var TinDust as IItemStack[] = [
    <EnderIO:itemPowderIngot:4>,
    <Mekanism:Dust:4>
];

var SilverDust as IItemStack[] = [
    <ImmersiveEngineering:metal:13>,
    <Mekanism:Dust:5>
];

var LeadDust as IItemStack[] = [
    <ImmersiveEngineering:metal:12>,
    <Mekanism:Dust:6>
];

var NickelDust as IItemStack[] = [
    <ImmersiveEngineering:metal:14>
];

var AluminumDust as IItemStack[] = [
    <ImmersiveEngineering:metal:11>
];

var CoalDust as IItemStack[] = [
    <ActuallyAdditions:itemDust:6>,
    <EnderIO:itemPowderIngot>
];

var SulfurDust as IItemStack[] = [
    <Mekanism:OtherDust:3>
];

var ElectrumDust as IItemStack[] = [
    <ImmersiveEngineering:metal:16>
];

var ObsidianDust as IItemStack[] = [
    <EnderIO:itemPowderIngot:7>,
    <Mekanism:OtherDust:6>
];

var CopperIngot as IItemStack[] = [
    <GalacticraftCore:item.basicItem:3>,
    <ImmersiveEngineering:metal>,
    <Mekanism:Ingot:5>,
    <TConstruct:materials:9>
];

var TinIngot as IItemStack[] = [
    <GalacticraftCore:item.basicItem:4>,
    <Mekanism:Ingot:6>,
    <TConstruct:materials:10>
];

var AluminumIngot as IItemStack[] = [
    <GalacticraftCore:item.basicItem:5>,
    <ImmersiveEngineering:metal:1>
];

var LeadIngot as IItemStack[] = [
    <ImmersiveEngineering:metal:2>,
    <ExtraPlanets:item.ingotLead>
];

var NickelIngot as IItemStack[] = [
    <ImmersiveEngineering:metal:4>,
    <ExtraPlanets:tier5Items:7>
];

var SilverIngot as IItemStack[] = [
    <ImmersiveEngineering:metal:3>
];

var SteelIngot as IItemStack[] = [
    <Mekanism:Ingot:4>,
    <ImmersiveEngineering:metal:7>
];

var BronzeIngot as IItemStack[] = [
    <TConstruct:materials:13>,
    <Mekanism:Ingot:2>
];

var ElectrumIngot as IItemStack[] = [
    <ImmersiveEngineering:metal:6>
];

////////////////////////
// Oredict Removal
////////////////////////

for item in IronDust {
    <ore:dustIron>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in GoldDust {
    <ore:dustGold>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:1>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in CopperDust {
    <ore:dustCopper>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:32>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in TinDust {
    <ore:dustTin>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:33>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in SilverDust {
    <ore:dustSilver>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:34>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in LeadDust {
    <ore:dustLead>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:35>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in NickelDust {
    <ore:dustNickel>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:36>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in AluminumDust {
    <ore:dustAluminum>.remove(item);
    <ore:dustAluminium>.remove(item);
    recipes.addShapeless(<TConstruct:materials:40>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in CoalDust {
    <ore:dustCoal>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:2>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in SulfurDust {
    <ore:dustSulfur>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:16>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in ElectrumDust {
    <ore:dustElectrum>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:39>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in ObsidianDust {
    <ore:dustObsidian>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:4>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in CopperIngot {
    <ore:ingotCopper>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:64>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in TinIngot {
    <ore:ingotTin>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:65>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in AluminumIngot {
    <ore:ingotAluminum>.remove(item);
    <ore:ingotAluminium>.remove(item);
    recipes.addShapeless(<TConstruct:materials:11>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in LeadIngot {
    <ore:ingotLead>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:67>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in NickelIngot {
    <ore:ingotNickel>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:68>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in SilverIngot {
    <ore:ingotSilver>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:66>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in SteelIngot {
    <ore:ingotSteel>.remove(item);
    recipes.addShapeless(<TConstruct:materials:16>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in BronzeIngot {
    <ore:ingotBronze>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:73>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

for item in ElectrumIngot {
    <ore:ingotElectrum>.remove(item);
    recipes.addShapeless(<ThermalFoundation:material:71>, [item]);
    item.addTooltip(format.darkRed("This item should not exist!"));
    item.addTooltip(format.darkRed("If you currently have this item, place it in your crafting grid to obtain the correct item."));
}

print("Completed 0 - OredictRemoval.zs");