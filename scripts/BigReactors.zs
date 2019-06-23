// BigReactors.zs
// By Rizinq for BIKE Modded S4

print("Running BigReactors.zs");

////////////////////////
// Variables
////////////////////////

var MarsCobble = <GalacticraftMars:tile.mars:4>;
var Palladium = <ExtraPlanets:tier5Items:5>;
var Steel = <ore:ingotSteel>;
var Uranium = <ore:ingotUranium>;
var Iron = <minecraft:iron_ingot>;
var Graphite = <ore:ingotGraphite>;

var ReactorFuelRod = <BigReactors:YelloriumFuelRod>;
var ReactorCasing = <BigReactors:BRReactorPart>;
var ReactorController = <BigReactors:BRReactorPart:1>;

var TurbineController = <BigReactors:BRTurbinePart:1>;
var TurbineHousing = <BigReactors:BRTurbinePart>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(ReactorFuelRod);
recipes.remove(ReactorCasing);
recipes.remove(ReactorController);

recipes.remove(TurbineController);
recipes.remove(TurbineHousing);

////////////////////////
// Recipe Addition
////////////////////////

// Reactor
recipes.addShaped(ReactorFuelRod, [
    [Steel, Graphite, Steel],
    [Iron, Uranium, Iron],
    [Steel, Graphite, Steel]
]);
recipes.addShaped(ReactorCasing * 4, [
    [Iron, Steel, Iron],
    [Graphite, Uranium, Graphite],
    [Iron, Steel, Iron]
]);
recipes.addShaped(ReactorController, [
    [ReactorCasing, MarsCobble, ReactorCasing],
    [Uranium, Steel, Uranium],
    [ReactorCasing, <ComputerCraft:CC-Computer>, ReactorCasing]
]);

// Turbine
recipes.addShaped(TurbineController, [
    [Steel, <BigReactors:BRIngot:3>, Steel],
    [Steel, Palladium, Steel],
    [Steel, <BigReactors:BRIngot:3>, Steel]
]);
recipes.addShaped(TurbineHousing * 16, [
    [Steel, Palladium, Steel],
    [Graphite, Palladium, Graphite],
    [Steel, Palladium, Steel]
]);

print("Completed BigReactors.zs");