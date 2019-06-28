// TiCon.zs
// By Rizinq for BIKE Modded S4

print("Running TiCon.zs");

////////////////////////
// Variables
////////////////////////

var Gravel = <minecraft:gravel>;
var Sand = <minecraft:sand>;
var ClayBlock = <minecraft:clay>;
var ClayBall = <minecraft:clay_ball>;
var Grout = <TConstruct:CraftedSoil:1>;
var Brick = <TConstruct:materials:2>;

////////////////////////
// Recipe Removal
////////////////////////

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShapeless(Grout * 2, [ClayBall, Sand, Gravel]);
recipes.addShapeless(Grout * 8, [ClayBlock, Sand, Sand, Sand, Sand, Gravel, Gravel, Gravel, Gravel]);

print("Completed TiCon.zs");