import mods.extraUtils.QED;

// AppliedEnergistics.zs
// By Rizinq for BIKE Modded S4

print("Running AppliedEnergistics.zs");

////////////////////////
// Variables
////////////////////////

var SiliconPress = <appliedenergistics2:item.ItemMultiMaterial:19>;
var LogicPress = <appliedenergistics2:item.ItemMultiMaterial:15>;
var EngineeringPress = <appliedenergistics2:item.ItemMultiMaterial:14>;
var CalculationPress = <appliedenergistics2:item.ItemMultiMaterial:13>;

var LogicCircuit = <appliedenergistics2:item.ItemMultiMaterial:18>;
var CalculationCircuit = <appliedenergistics2:item.ItemMultiMaterial:16>;
var EngineeringCircuit = <appliedenergistics2:item.ItemMultiMaterial:17>;
var PrintedSilicon = <appliedenergistics2:item.ItemMultiMaterial:20>;

var LogicProcessor = <appliedenergistics2:item.ItemMultiMaterial:22>;
var EngineeringProcessor = <appliedenergistics2:item.ItemMultiMaterial:24>;
var CalculationProcessor = <appliedenergistics2:item.ItemMultiMaterial:23>;

var MEDrive = <appliedenergistics2:tile.BlockDrive>;
var MEController = <appliedenergistics2:tile.BlockController>;
var SpatialPort = <appliedenergistics2:tile.BlockSpatialIOPort>;
var QuantumChamber = <appliedenergistics2:tile.BlockQuantumLinkChamber>;
var QuantumRing = <appliedenergistics2:tile.BlockQuantumRing>;
var SecurityTerminal = <appliedenergistics2:tile.BlockSecurity>;
var Charger = <appliedenergistics2:tile.BlockCharger>;
var Inscriber = <appliedenergistics2:tile.BlockInscriber>;

var BlankPattern = <appliedenergistics2:item.ItemMultiMaterial:52>;
var MolecularAssembler = <appliedenergistics2:tile.BlockMolecularAssembler>;
var CraftingUnit = <appliedenergistics2:tile.BlockCraftingUnit>;

var MatterCondenser = <appliedenergistics2:tile.BlockCondenser>;
var IOPort = <appliedenergistics2:tile.BlockIOPort>;
var CellWorkbench = <appliedenergistics2:tile.BlockCellWorkbench>;
var Interface = <appliedenergistics2:tile.BlockInterface>;
var MEChest = <appliedenergistics2:tile.BlockChest>;

var AnnihilationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
var FormationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;

var ICell = <appliedenergistics2:item.ItemBasicStorageCell.1k>;
var IICell = <appliedenergistics2:item.ItemBasicStorageCell.4k>;
var IIICell = <appliedenergistics2:item.ItemBasicStorageCell.16k>;
var IIIICell = <appliedenergistics2:item.ItemBasicStorageCell.64k>;
var StorageHousing = <appliedenergistics2:item.ItemMultiMaterial:39>;

var GlassCable = <appliedenergistics2:item.ItemMultiPart:16>;

var FluixPearl = <appliedenergistics2:item.ItemMultiMaterial:9>;
var FluixDust = <appliedenergistics2:item.ItemMultiMaterial:8>;
var FluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:7>;

var PureQuartz = <appliedenergistics2:item.ItemMultiMaterial:11>;
var PureFluix = <appliedenergistics2:item.ItemMultiMaterial:12>;
var PureCertus = <appliedenergistics2:item.ItemMultiMaterial:10>;

var CertusDust = <appliedenergistics2:item.ItemMultiMaterial:2>;
var ChargedCertus = <appliedenergistics2:item.ItemMultiMaterial:1>;
var Certus = <appliedenergistics2:item.ItemMultiMaterial>;

var Silicon = <ore:itemSilicon>;
var EnergeticAlloy = <EnderIO:itemAlloy:1>;
var VibrantAlloy = <EnderIO:itemAlloy:2>;
var MarsCobble = <GalacticraftMars:tile.mars:4>;
var QuartzGlass = <appliedenergistics2:tile.BlockQuartzGlass>;
var Terrasteel = <Botania:manaResource:4>;

var Iron = <minecraft:iron_ingot>;
var Redstone = <minecraft:redstone>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(MEDrive);
recipes.remove(MEController);
recipes.remove(SpatialPort);
recipes.remove(QuantumChamber);
recipes.remove(QuantumRing);
recipes.remove(SecurityTerminal);
recipes.remove(Charger);
recipes.remove(Inscriber);

recipes.remove(BlankPattern);
recipes.remove(MolecularAssembler);
recipes.remove(CraftingUnit);

recipes.remove(MatterCondenser);
recipes.remove(IOPort);
recipes.remove(CellWorkbench);
recipes.remove(Interface);
recipes.remove(MEChest);

recipes.remove(ICell);
recipes.remove(IICell);
recipes.remove(IIICell);
recipes.remove(IIIICell);
recipes.remove(StorageHousing);

////////////////////////
// Recipe Addition
////////////////////////

// Basic Tier
recipes.addShaped(MEDrive, [
    [EnergeticAlloy, EngineeringProcessor, EnergeticAlloy],
    [GlassCable, <minecraft:chest>, GlassCable],
    [EnergeticAlloy, EngineeringProcessor, EnergeticAlloy]
]);

recipes.addShaped(MEChest, [
    [<ore:blockGlass>, <appliedenergistics2:item.ItemMultiPart:380>, <ore:blockGlass>],
    [GlassCable, null, GlassCable],
    [EnergeticAlloy, <ore:fluixCrystal>, EnergeticAlloy]
]);

recipes.addShaped(SecurityTerminal, [
    [EnergeticAlloy, MEChest, EnergeticAlloy],
    [GlassCable, <appliedenergistics2:item.ItemMultiMaterial:37>, GlassCable],
    [EnergeticAlloy, EngineeringProcessor, EnergeticAlloy]
]);

recipes.addShaped(Charger, [
    [Iron, <ore:crystalFluix>, EnergeticAlloy],
    [<ore:ingotSteel>, null, null],
    [Iron, <ore:crystalFluix>, EnergeticAlloy]
]);

mods.extraUtils.QED.addShapedRecipe(Inscriber, [
    [EnergeticAlloy, <minecraft:sticky_piston>, Iron],
    [<ore:crystalFluix>, null, Iron],
    [EnergeticAlloy, <minecraft:sticky_piston>, Iron]
]);

recipes.addShaped(Interface, [
    [EnergeticAlloy, <ore:blockGlass>, EnergeticAlloy],
    [AnnihilationCore, <BuildCraft|Silicon:redstoneChipset:6>, FormationCore],
    [EnergeticAlloy, <ore:blockGlass>, EnergeticAlloy]
]);

recipes.addShaped(ICell, [
    [QuartzGlass, Redstone, QuartzGlass],
    [Redstone, <appliedenergistics2:item.ItemMultiMaterial:35>, Redstone],
    [EnergeticAlloy, EnergeticAlloy, EnergeticAlloy]
]);

recipes.addShaped(IICell, [
    [QuartzGlass, Redstone, QuartzGlass],
    [Redstone, <appliedenergistics2:item.ItemMultiMaterial:36>, Redstone],
    [EnergeticAlloy, EnergeticAlloy, EnergeticAlloy]
]);

recipes.addShaped(IIICell, [
    [QuartzGlass, Redstone, QuartzGlass],
    [Redstone, <appliedenergistics2:item.ItemMultiMaterial:37>, Redstone],
    [EnergeticAlloy, EnergeticAlloy, EnergeticAlloy]
]);

recipes.addShaped(IIIICell, [
    [QuartzGlass, Redstone, QuartzGlass],
    [Redstone, <appliedenergistics2:item.ItemMultiMaterial:38>, Redstone],
    [EnergeticAlloy, EnergeticAlloy, EnergeticAlloy]
]);

recipes.addShapeless(ICell, [<appliedenergistics2:item.ItemMultiMaterial:35>, StorageHousing]);
recipes.addShapeless(IICell, [<appliedenergistics2:item.ItemMultiMaterial:36>, StorageHousing]);
recipes.addShapeless(IIICell, [<appliedenergistics2:item.ItemMultiMaterial:37>, StorageHousing]);
recipes.addShapeless(IIIICell, [<appliedenergistics2:item.ItemMultiMaterial:38>, StorageHousing]);

recipes.addShaped(StorageHousing, [
    [QuartzGlass, Redstone, QuartzGlass],
    [Redstone, null, Redstone],
    [EnergeticAlloy, EnergeticAlloy, EnergeticAlloy]
]);

// Advanced Tier
recipes.addShaped(MEController, [
    [MarsCobble, PureFluix, MarsCobble],
    [PureFluix, EngineeringProcessor, PureFluix],
    [MarsCobble, <BuildCraft|Silicon:redstoneChipset:6>, MarsCobble]
]);

recipes.addShaped(SpatialPort, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [GlassCable, IOPort, GlassCable],
    [VibrantAlloy, EngineeringProcessor, VibrantAlloy]
]);

recipes.addShaped(QuantumRing, [
    [VibrantAlloy, LogicProcessor, VibrantAlloy],
    [EngineeringProcessor, <appliedenergistics2:tile.BlockEnergyCell>, <appliedenergistics2:item.ItemMultiPart:76>],
    [VibrantAlloy, LogicProcessor, VibrantAlloy]
]);

recipes.addShaped(QuantumChamber, [
    [QuartzGlass, FluixPearl, QuartzGlass],
    [FluixPearl, VibrantAlloy, FluixPearl],
    [QuartzGlass, FluixPearl, QuartzGlass]
]);

recipes.addShaped(BlankPattern, [
    [QuartzGlass, <minecraft:glowstone_dust>, QuartzGlass],
    [<minecraft:glowstone_dust>, <ore:crystalCertusQuartz>, <minecraft:glowstone_dust>],
    [Terrasteel, VibrantAlloy, Terrasteel]
]);

recipes.addShaped(MolecularAssembler, [
    [VibrantAlloy, QuartzGlass, Terrasteel],
    [AnnihilationCore, <BuildCraft|Silicon:redstoneChipset:4>, FormationCore],
    [Terrasteel, QuartzGlass, VibrantAlloy]
]);

recipes.addShaped(CraftingUnit, [
    [VibrantAlloy, CalculationProcessor, VibrantAlloy],
    [GlassCable, Terrasteel, GlassCable],
    [EnergeticAlloy, <BuildCraft|Silicon:redstoneChipset:4>, EnergeticAlloy]
]);

recipes.addShaped(MatterCondenser, [
    [VibrantAlloy, <ore:blockGlass>, VibrantAlloy],
    [<ore:blockGlass>, FluixDust, <ore:blockGlass>],
    [VibrantAlloy, <ore:blockGlass>, VibrantAlloy]
]);

recipes.addShaped(IOPort, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [MEDrive, GlassCable, MEDrive],
    [VibrantAlloy, LogicProcessor, VibrantAlloy]
]);

recipes.addShaped(CellWorkbench, [
    [<ore:blockWool>, CalculationProcessor, <ore:blockWool>],
    [VibrantAlloy, <minecraft:chest>, VibrantAlloy],
    [EnergeticAlloy, Terrasteel, EnergeticAlloy]
]);

print("Completed AppliedEnergistics.zs");