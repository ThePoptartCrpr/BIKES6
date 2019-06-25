import minetweaker.item.IItemStack;

// ThermalExpansion.zs
// By Rizinq for BIKE Modded S4

print("Running ThermalExpansion.zs");

////////////////////////
// Variables
////////////////////////

var RedstoneFurnace as IItemStack[] = [
    <ThermalExpansion:Machine>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var Pulverizer as IItemStack[] = [
    <ThermalExpansion:Machine:1>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:1>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:1>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:1>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var Sawmill as IItemStack[] = [
    <ThermalExpansion:Machine:2>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:2>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:2>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:2>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var InductionSmelter as IItemStack[] = [
    <ThermalExpansion:Machine:3>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:3>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:3>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:3>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var MagmaCrucible as IItemStack[] = [
    <ThermalExpansion:Machine:4>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:4>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:4>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:4>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var FluidTransposer as IItemStack[] = [
    <ThermalExpansion:Machine:5>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:5>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:5>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:5>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var Precipitator as IItemStack[] = [
    <ThermalExpansion:Machine:6>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:6>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:6>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:6>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var IgneousExtruder as IItemStack[] = [
    <ThermalExpansion:Machine:7>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:7>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:7>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:7>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var Accumulator as IItemStack[] = [
    <ThermalExpansion:Machine:8>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:8>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:8>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:8>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var Assembler as IItemStack[] = [
    <ThermalExpansion:Machine:9>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:9>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:9>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:9>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var Infuser as IItemStack[] = [
    <ThermalExpansion:Machine:10>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:10>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:10>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:10>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var Insolator as IItemStack[] = [
    <ThermalExpansion:Machine:11>.withTag({Level: 0 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:11>.withTag({Level: 1 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:11>.withTag({Level: 2 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]}),
    <ThermalExpansion:Machine:11>.withTag({Level: 3 as byte, Augments: [{Slot: 0, id: 4892 as short, Count: 1 as byte, Damage: 0 as short}, {Slot: 1, id: 4892 as short, Count: 1 as byte, Damage: 32 as short}, {Slot: 2, id: 4892 as short, Count: 1 as byte, Damage: 16 as short}]})
];

var MachineFrames as IItemStack[] = [
    <ThermalExpansion:Frame>,
    <ThermalExpansion:Frame:1>,
    <ThermalExpansion:Frame:2>,
    <ThermalExpansion:Frame:3>
];

var IronPlate = <ImmersiveEngineering:metal:30>;
var IronIngot = <minecraft:iron_ingot>;
var ElectrumGear = <ThermalFoundation:material:135>;
var TinGear = <ThermalFoundation:material:129>;
var InvarIngot = <ThermalFoundation:material:72>;
var LeadPlate = <ImmersiveEngineering:metal:33>;
var HardenedGlass = <ore:blockGlassHardened>;
var SignalumGear = <ThermalFoundation:material:138>;
var SilverIngot = <ThermalFoundation:material:66>;
var EnderiumGear = <ThermalFoundation:material:140>;
var Redstone = <minecraft:redstone>;
var ReceptionCoil = <ThermalExpansion:material:1>;
var CopperGear = <ThermalFoundation:material:128>;
var MoonRock = <GalacticraftCore:tile.moonBlock:4>;
var InvarGear = <ThermalFoundation:material:136>;
var LeadFrame = <ThermalExpansion:Frame:4>;
var TransmissionCoil = <ThermalExpansion:material:2>;
var LumiumGear = <ThermalFoundation:material:139>;

var BasicCapacitor = <EnderIO:itemBasicCapacitor>;

////////////////////////
// Recipe Removal
////////////////////////

// Machines (non-upgrade crafting)
recipes.remove(RedstoneFurnace[0].onlyWithTag({Level: 0}));
recipes.remove(Pulverizer[0].onlyWithTag({Level: 0}));
recipes.remove(Sawmill[0].onlyWithTag({Level: 0}));
recipes.remove(InductionSmelter[0].onlyWithTag({Level: 0}));
recipes.remove(MagmaCrucible[0].onlyWithTag({Level: 0}));
recipes.remove(FluidTransposer[0].onlyWithTag({Level: 0}));
recipes.remove(Precipitator[0].onlyWithTag({Level: 0}));
recipes.remove(IgneousExtruder[0].onlyWithTag({Level: 0}));
recipes.remove(Accumulator[0].onlyWithTag({Level: 0}));
recipes.remove(Assembler[0].onlyWithTag({Level: 0}));
recipes.remove(Infuser[0].onlyWithTag({Level: 0}));
recipes.remove(Insolator[0].onlyWithTag({Level: 0}));

// Machine frames
for item in MachineFrames {
    recipes.remove(item);
}

////////////////////////
// Recipe Addition
////////////////////////

// Machine Frames
recipes.addShaped(MachineFrames[0], [
    [IronIngot, IronPlate, IronIngot],
    [<ore:blockGlass>, TinGear, <ore:blockGlass>],
    [IronIngot, IronPlate, IronIngot]
]);

recipes.addShaped(MachineFrames[1], [
    [InvarIngot, ElectrumGear, InvarIngot],
    [IronPlate, MachineFrames[0], IronPlate],
    [InvarIngot, <ore:blockGlass>, InvarIngot]
]);

recipes.addShaped(MachineFrames[2], [
    [HardenedGlass, SignalumGear, HardenedGlass],
    [LeadPlate, MachineFrames[1], LeadPlate],
    [HardenedGlass, LeadPlate, HardenedGlass]
]);

recipes.addShaped(MachineFrames[3], [
    [SilverIngot, EnderiumGear, SilverIngot],
    [LeadPlate, MachineFrames[2], LeadPlate],
    [SilverIngot, EnderiumGear, SilverIngot]
]);

// Redstone Furnace
recipes.addShaped(RedstoneFurnace[0], [
    [null, Redstone, null],
    [<minecraft:brick_block>, MachineFrames[0], <minecraft:brick_block>],
    [CopperGear, ReceptionCoil, CopperGear]
]);
recipes.addShaped(RedstoneFurnace[1], [
    [null, Redstone, null],
    [<minecraft:brick_block>, MachineFrames[1], <minecraft:brick_block>],
    [CopperGear, ReceptionCoil, CopperGear]
]);
recipes.addShaped(RedstoneFurnace[2], [
    [null, Redstone, null],
    [<minecraft:brick_block>, MachineFrames[2], <minecraft:brick_block>],
    [CopperGear, ReceptionCoil, CopperGear]
]);
recipes.addShaped(RedstoneFurnace[3], [
    [null, Redstone, null],
    [<minecraft:brick_block>, MachineFrames[3], <minecraft:brick_block>],
    [CopperGear, ReceptionCoil, CopperGear]
]);

// Pulverizer
recipes.addShaped(Pulverizer[0], [
    [null, <minecraft:piston>, null],
    [<minecraft:flint>, MachineFrames[0], <minecraft:flint>],
    [CopperGear, ReceptionCoil, CopperGear]
]);
recipes.addShaped(Pulverizer[1], [
    [null, <minecraft:piston>, null],
    [<minecraft:flint>, MachineFrames[1], <minecraft:flint>],
    [CopperGear, ReceptionCoil, CopperGear]
]);
recipes.addShaped(Pulverizer[2], [
    [null, <minecraft:piston>, null],
    [<minecraft:flint>, MachineFrames[2], <minecraft:flint>],
    [CopperGear, ReceptionCoil, CopperGear]
]);
recipes.addShaped(Pulverizer[3], [
    [null, <minecraft:piston>, null],
    [<minecraft:flint>, MachineFrames[3], <minecraft:flint>],
    [CopperGear, ReceptionCoil, CopperGear]
]);

// Sawmill
recipes.addShaped(Sawmill[0], [
    [null, <minecraft:iron_axe>, null],
    [<ore:plankWood>, MachineFrames[0], <ore:plankWood>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Sawmill[1], [
    [null, <minecraft:iron_axe>, null],
    [<ore:plankWood>, MachineFrames[1], <ore:plankWood>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Sawmill[2], [
    [null, <minecraft:iron_axe>, null],
    [<ore:plankWood>, MachineFrames[2], <ore:plankWood>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Sawmill[3], [
    [null, <minecraft:iron_axe>, null],
    [<ore:plankWood>, MachineFrames[3], <ore:plankWood>],
    [CopperGear, MoonRock, CopperGear]
]);

// Induction Smelter
recipes.addShaped(InductionSmelter[0], [
    [null, <minecraft:bucket>, null],
    [InvarIngot, MachineFrames[0], InvarIngot],
    [InvarGear, MoonRock, InvarGear]
]);

// Magma Crucible
recipes.addShaped(MagmaCrucible[0], [
    [null, LeadFrame, null],
    [<minecraft:nether_brick>, MachineFrames[0], <minecraft:nether_brick>],
    [InvarGear, BasicCapacitor, InvarGear]
]);
recipes.addShaped(MagmaCrucible[1], [
    [null, LeadFrame, null],
    [<minecraft:nether_brick>, MachineFrames[1], <minecraft:nether_brick>],
    [InvarGear, BasicCapacitor, InvarGear]
]);
recipes.addShaped(MagmaCrucible[2], [
    [null, LeadFrame, null],
    [<minecraft:nether_brick>, MachineFrames[2], <minecraft:nether_brick>],
    [InvarGear, BasicCapacitor, InvarGear]
]);
recipes.addShaped(MagmaCrucible[3], [
    [null, LeadFrame, null],
    [<minecraft:nether_brick>, MachineFrames[3], <minecraft:nether_brick>],
    [InvarGear, BasicCapacitor, InvarGear]
]);

// Fluid Transposer
recipes.addShaped(FluidTransposer[0], [
    [null, <minecraft:bucket>, null],
    [<ore:blockGlass>, MachineFrames[0], <ore:blockGlass>],
    [CopperGear, BasicCapacitor, CopperGear]
]);
recipes.addShaped(FluidTransposer[1], [
    [null, <minecraft:bucket>, null],
    [<ore:blockGlass>, MachineFrames[1], <ore:blockGlass>],
    [CopperGear, BasicCapacitor, CopperGear]
]);
recipes.addShaped(FluidTransposer[2], [
    [null, <minecraft:bucket>, null],
    [<ore:blockGlass>, MachineFrames[2], <ore:blockGlass>],
    [CopperGear, BasicCapacitor, CopperGear]
]);
recipes.addShaped(FluidTransposer[3], [
    [null, <minecraft:bucket>, null],
    [<ore:blockGlass>, MachineFrames[3], <ore:blockGlass>],
    [CopperGear, BasicCapacitor, CopperGear]
]);

// Glacial Precipitator
recipes.addShaped(Precipitator[0], [
    [null, <minecraft:piston>, null],
    [InvarIngot, MachineFrames[0], InvarIngot],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Precipitator[1], [
    [null, <minecraft:piston>, null],
    [InvarIngot, MachineFrames[1], InvarIngot],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Precipitator[2], [
    [null, <minecraft:piston>, null],
    [InvarIngot, MachineFrames[2], InvarIngot],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Precipitator[3], [
    [null, <minecraft:piston>, null],
    [InvarIngot, MachineFrames[3], InvarIngot],
    [CopperGear, MoonRock, CopperGear]
]);

// Igneous Extruder
recipes.addShaped(IgneousExtruder[0], [
    [null, <minecraft:piston>, null],
    [<ore:blockGlass>, MachineFrames[0], <ore:blockGlass>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(IgneousExtruder[1], [
    [null, <minecraft:piston>, null],
    [<ore:blockGlass>, MachineFrames[1], <ore:blockGlass>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(IgneousExtruder[2], [
    [null, <minecraft:piston>, null],
    [<ore:blockGlass>, MachineFrames[2], <ore:blockGlass>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(IgneousExtruder[3], [
    [null, <minecraft:piston>, null],
    [<ore:blockGlass>, MachineFrames[3], <ore:blockGlass>],
    [CopperGear, MoonRock, CopperGear]
]);

// Aqueous Accumulator
recipes.addShaped(Accumulator[0], [
    [null, <minecraft:bucket>, null],
    [<ore:blockGlass>, MachineFrames[0], <ore:blockGlass>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Accumulator[1], [
    [null, <minecraft:bucket>, null],
    [<ore:blockGlass>, MachineFrames[1], <ore:blockGlass>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Accumulator[2], [
    [null, <minecraft:bucket>, null],
    [<ore:blockGlass>, MachineFrames[2], <ore:blockGlass>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Accumulator[3], [
    [null, <minecraft:bucket>, null],
    [<ore:blockGlass>, MachineFrames[3], <ore:blockGlass>],
    [CopperGear, MoonRock, CopperGear]
]);

// Cyclic Assembler
recipes.addShaped(Assembler[0], [
    [null, <minecraft:chest>, null],
    [TinGear, MachineFrames[0], TinGear],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Assembler[1], [
    [null, <minecraft:chest>, null],
    [TinGear, MachineFrames[1], TinGear],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Assembler[2], [
    [null, <minecraft:chest>, null],
    [TinGear, MachineFrames[2], TinGear],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Assembler[3], [
    [null, <minecraft:chest>, null],
    [TinGear, MachineFrames[3], TinGear],
    [CopperGear, MoonRock, CopperGear]
]);

// Energetic Infuser
recipes.addShaped(Infuser[0], [
    [null, LeadFrame, null],
    [TransmissionCoil, MachineFrames[0], TransmissionCoil],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Infuser[1], [
    [null, LeadFrame, null],
    [TransmissionCoil, MachineFrames[1], TransmissionCoil],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Infuser[2], [
    [null, LeadFrame, null],
    [TransmissionCoil, MachineFrames[2], TransmissionCoil],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Infuser[3], [
    [null, LeadFrame, null],
    [TransmissionCoil, MachineFrames[3], TransmissionCoil],
    [CopperGear, MoonRock, CopperGear]
]);

// Phytogenic Insolator
recipes.addShaped(Insolator[0], [
    [null, LumiumGear, null],
    [<minecraft:dirt>, MachineFrames[0], <minecraft:dirt>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Insolator[1], [
    [null, LumiumGear, null],
    [<minecraft:dirt>, MachineFrames[1], <minecraft:dirt>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Insolator[2], [
    [null, LumiumGear, null],
    [<minecraft:dirt>, MachineFrames[2], <minecraft:dirt>],
    [CopperGear, MoonRock, CopperGear]
]);
recipes.addShaped(Insolator[3], [
    [null, LumiumGear, null],
    [<minecraft:dirt>, MachineFrames[3], <minecraft:dirt>],
    [CopperGear, MoonRock, CopperGear]
]);

print("Completed ThermalExpansion.zs");