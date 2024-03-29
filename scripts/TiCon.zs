// TiCon.zs
// By Ghalid for BIKE Modded S4

print("Running TiCon.zs");

////////////////////////
// Variables
////////////////////////

var GreenHeart = <TConstruct:heartCanister:5>;
var GreenCanister = <TConstruct:heartCanister:6>;
var YellowHeart = <TConstruct:heartCanister:3>;
var YellowCanister = <TConstruct:heartCanister:4>;

////////////////////////
// Recipe Removal
////////////////////////

mods.tconstruct.Casting.removeTableRecipe(<DraconicEvolution:draconiumIngot>);
mods.tconstruct.Casting.removeTableRecipe(<DraconicEvolution:nugget>);
mods.tconstruct.Casting.removeBasinRecipe(<DraconicEvolution:draconium>);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShapeless(GreenCanister, [GreenHeart, YellowCanister, <ExtraPlanets:diamondApple:1>]);
recipes.addShapeless(GreenHeart, [<ExtraUtilities:block_bedrockium>, YellowHeart, <ExtraPlanets:tier11Items:4>, <Botania:storage:1>]);

print("Completed TiCon.zs");