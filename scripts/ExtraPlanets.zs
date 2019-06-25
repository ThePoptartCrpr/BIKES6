import minetweaker.item.IItemStack;
import mods.nei.NEI;

// ExtraPlanets.zs
// By Ghalid for BIKE Modded S6

print("Running ExtraPlanets.zs");

////////////////////////
// Recipe Removal
////////////////////////

recipes.removeShaped(<ExtraPlanets:item.electricParts>);
recipes.removeShaped(<ExtraPlanets:item.electricParts:1>);
recipes.removeShaped(<ExtraPlanets:nickelBattery>.withTag({electricity: 45000.0 as float}));

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(<ExtraPlanets:item.electricParts>, [[<ore:ingotLead>, <GalacticraftMars:item.null:3>, <ore:ingotLead>], [<GalacticraftMars:item.null:3>, <ore:ingotLead>, <GalacticraftMars:item.null:3>], [<ore:ingotLead>, <GalacticraftMars:item.null:3>, <ore:ingotLead>]]);
recipes.addShaped(<ExtraPlanets:item.electricParts:1>, [[<ore:ingotLead>, <ExtraPlanets:tier4Items:3>, <ore:ingotLead>], [<ExtraPlanets:tier4Items:3>, <ore:ingotLead>, <ExtraPlanets:tier4Items:3>], [<ore:ingotLead>, <ExtraPlanets:tier4Items:3>, <ore:ingotLead>]]);

////////////////////////
// NEI Hiding
////////////////////////

NEI.hide(<ExtraPlanets:tier5Items:6>);
NEI.hide(<ExtraPlanets:nickelBattery>.withTag({electricity: 45000.0 as float}));
NEI.hide(<ExtraPlanets:nickelBattery>.withTag({electricity: 45000.0 as float}));

print("Completed ExtraPlanets.zs");