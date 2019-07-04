import mods.buildcraft.AssemblyTable;

// Calculator.zs
// By jamzs for BIKE Modded S6

print("Running Calculator.zs");

////////////////////////
// Variables
////////////////////////

var AnalysingChamber = <Calculator:AnalysingChamber>;
var CalculatorScreen = <Calculator:CalculatorScreen>;
var InfinityCatalyst = <Avaritia:Resource:5>;

var HungerProcessor = <Calculator:HungerProcessor>;
var HealthProcessor = <Calculator:HealthProcessor>;

var FlawlessDiamond = <Calculator:FlawlessDiamond>;
var RedstoneIngot = <Calculator:RedstoneIngot>;

var HungerModule = <Calculator:HungerModule>;
var HealthModule = <Calculator:HealthModule>;
var NutritionModule = <Calculator:NutritionModule>;

var AmethystShard = <Calculator:Shard Amethyst>;
var SmallAmethyst = <Calculator:Small Amethyst>;
var LargeAmethyst = <Calculator:Large Amethyst>;

var TanzaniteShard = <Calculator:ShardTanzanite>;
var SmallTanzanite = <Calculator:SmallTanzanite>;
var LargeTanzanite = <Calculator:LargeTanzanite>;


////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(HungerProcessor);
recipes.remove(HealthProcessor);
recipes.remove(AnalysingChamber);

recipes.remove(HealthModule);
recipes.remove(HungerModule);


////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(HungerModule, [
    [AmethystShard, CalculatorScreen, AmethystShard],
    [SmallAmethyst, <Avaritia:Ultimate_Stew>, SmallAmethyst],
    [AmethystShard, <Avaritia:Resource:4>, AmethystShard]
]);

recipes.addShaped(HealthModule, [
    [TanzaniteShard, CalculatorScreen, TanzaniteShard],
    [SmallTanzanite, <DraconicEvolution:dragonHeart>, SmallTanzanite],
    [TanzaniteShard, <Avaritia:Resource:4>, TanzaniteShard]
]);

recipes.addShaped(HungerProcessor, [
    [LargeAmethyst, RedstoneIngot, LargeAmethyst],
    [RedstoneIngot, InfinityCatalyst, RedstoneIngot],
    [LargeAmethyst, RedstoneIngot, LargeAmethyst]
]);

recipes.addShaped(HealthProcessor, [
    [LargeTanzanite, FlawlessDiamond, LargeTanzanite],
    [FlawlessDiamond, InfinityCatalyst, FlawlessDiamond],
    [LargeTanzanite, FlawlessDiamond, LargeTanzanite]
]);


print("Completed Calculator.zs");
