import minetweaker.item.IItemStack;

// ExtraPlanets.zs
// By Ghalid for BIKE Modded S6

print("Running ExtraPlanets.zs");

////////////////////////
// Recipe Removal
////////////////////////

recipes.removeShaped(<ExtraPlanets:item.electricParts>);
recipes.removeShaped(<ExtraPlanets:item.electricParts:1>);

////////////////////////
// Recipe Removal
////////////////////////

recipes.addShaped(<ExtraPlanets:item.electricParts>, [[<ore:ingotLead>, <GalacticraftMars:item.null:3>, <ore:ingotLead>], [<GalacticraftMars:item.null:3>, <ore:ingotLead>, <GalacticraftMars:item.null:3>], [<ore:ingotLead>, <GalacticraftMars:item.null:3>, <ore:ingotLead>]]);
recipes.addShaped(<ExtraPlanets:item.electricParts:1>, [[<ore:ingotLead>, <ExtraPlanets:tier4Items:3>, <ore:ingotLead>], [<ExtraPlanets:tier4Items:3>, <ore:ingotLead>, <ExtraPlanets:tier4Items:3>], [<ore:ingotLead>, <ExtraPlanets:tier4Items:3>, <ore:ingotLead>]]);

print("Completed ExtraPlanets.zs");