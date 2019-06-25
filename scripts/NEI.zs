import minetweaker.item.IItemStack;
import mods.nei.NEI;

// NEI.zs
// By Ghalid for BIKE Modded S6

print("Running NEI.zs");

////////////////////////
// Variables
////////////////////////

var Hide as IItemStack[] = [
    <ActuallyAdditions:itemDust>,
    <EnderIO:itemPowderIngot:1>,
    <ImmersiveEngineering:metal:8>,
    <Mekanism:Dust>,
    <ActuallyAdditions:itemDust:1>,
    <EnderIO:itemPowderIngot:2>,
    <ImmersiveEngineering:metal:9>,
    <Mekanism:Dust:1>,
    <EnderIO:itemPowderIngot:3>,
    <ImmersiveEngineering:metal:10>,
    <Mekanism:Dust:3>,
    <EnderIO:itemPowderIngot:4>,
    <Mekanism:Dust:4>,
    <ImmersiveEngineering:metal:13>,
    <Mekanism:Dust:5>,
    <ImmersiveEngineering:metal:12>,
    <Mekanism:Dust:6>,
    <ImmersiveEngineering:metal:14>,
    <ImmersiveEngineering:metal:11>,
    <ActuallyAdditions:itemDust:6>,
    <EnderIO:itemPowderIngot>,
    <Mekanism:OtherDust:3>,
    <ImmersiveEngineering:metal:16>,
    <EnderIO:itemPowderIngot:7>,
    <Mekanism:OtherDust:6>,
    <GalacticraftCore:item.basicItem:3>,
    <ImmersiveEngineering:metal>,
    <Mekanism:Ingot:5>,
    <TConstruct:materials:9>,
    <GalacticraftCore:item.basicItem:4>,
    <Mekanism:Ingot:6>,
    <TConstruct:materials:10>,
    <GalacticraftCore:item.basicItem:5>,
    <ImmersiveEngineering:metal:1>,
    <ImmersiveEngineering:metal:2>,
    <ExtraPlanets:item.ingotLead>,
    <ImmersiveEngineering:metal:4>,
    <ExtraPlanets:tier5Items:7>,
    <ImmersiveEngineering:metal:3>,
    <Mekanism:Ingot:4>,
    <ImmersiveEngineering:metal:7>,
    <TConstruct:materials:13>,
    <Mekanism:Ingot:2>,
    <ImmersiveEngineering:metal:6>,
    <ExtraPlanets:tier5Items:6>,
    <ExtraPlanets:nickelBattery>.withTag({electricity: 45000.0 as float})
];

////////////////////////
// NEI Hiding
////////////////////////

for item in Hide {
    NEI.hide(item);
}