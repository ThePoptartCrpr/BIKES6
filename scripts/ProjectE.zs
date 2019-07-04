import mods.nei.NEI;
import mods.avaritia.ExtremeCrafting;

// ProjectE.zs
// By Rizinq for BIKE Modded S4

print("Running ProjectE.zs");

////////////////////////
// Variables
////////////////////////

var AlchemicalChest = <ProjectE:alchemical_chest>;
var CondenserMK1 = <ProjectE:condenser_mk1>;
var CondenserMK2 = <ProjectE:condenser_mk2>;
var TransmutationTable = <ProjectE:transmutation_table>;
var TransmutationTablet = <ProjectE:item.pe_transmutation_tablet>;
var PhilosophersStone = <ProjectE:item.pe_philosophers_stone>;
var AlchemicalBag = <ProjectE:item.pe_alchemical_bag>;
var DustMK1 = <ProjectE:item.pe_covalence_dust>;
var DustMK2 = <ProjectE:item.pe_covalence_dust:1>;
var DustMK3 = <ProjectE:item.pe_covalence_dust:2>;
var KnowledgeTome = <ProjectE:item.pe_tome>;

var InfinityCatalyst = <Avaritia:Resource:5>;
var Terrasteel = <Botania:manaResource:4>;
var CrystalMatrixIngot = <Avaritia:Resource:1>;
var NeutroniumIngot = <Avaritia:Resource:4>;
var RedstoneSNGL = <Avaritia:Singularity:3>;
var LapisSNGL = <Avaritia:Singularity:2>;
var IronSNGL = <Avaritia:Singularity>;
var GoldSNGL = <Avaritia:Singularity:1>;
var CTerminal = <appliedenergistics2:item.ItemMultiPart:360>;
var PTerminal = <appliedenergistics2:item.ItemMultiPart:340>;
var ITerminal = <appliedenergistics2:item.ItemMultiPart:480>;
var Controller = <appliedenergistics2:tile.BlockController>;
var UltimateFurnace = <magicalcrops:UltimateFurnace>;
var Octuple = <ExtraUtilities:cobblestone_compressed:7>;
var Book = <ExtraUtilities:decorativeBlock1:8>;
var Bedrock = <minecraft:bedrock>;
var Elementium = <Botania:manaResource:7>;

// To Hide/Remove Recipe
var RelayMK1 = <ProjectE:relay_mk1>;
var RelayMK2 = <ProjectE:relay_mk2>;
var RelayMK3 = <ProjectE:relay_mk3>;
var CollectorMK1 = <ProjectE:collector_mk1>;
var CollectorMK2 = <ProjectE:collector_mk2>;
var CollectorMK3 = <ProjectE:collector_mk3>;
var Pedestal = <ProjectE:dm_pedestal>;
var Cataclysm = <ProjectE:nova_cataclysm>;
var Catalyst = <ProjectE:nova_catalyst>;
var InterdictionTorch = <ProjectE:interdiction_torch>;
var RepairTalisman = <ProjectE:item.pe_repair_talisman>;
var FlowingTime = <ProjectE:item.pe_time_watch>;
var IronBand = <ProjectE:item.pe_ring_iron_band>;

////////////////////////
// Recipe Removal
////////////////////////

recipes.remove(RelayMK1);
recipes.remove(RelayMK2);
recipes.remove(RelayMK3);
recipes.remove(CollectorMK1);
recipes.remove(CollectorMK2);
recipes.remove(CollectorMK3);
recipes.remove(Pedestal);
recipes.remove(Cataclysm);
recipes.remove(Catalyst);
recipes.remove(InterdictionTorch);
recipes.remove(RepairTalisman);
recipes.remove(FlowingTime);
recipes.remove(IronBand);

NEI.hide(RelayMK1);
NEI.hide(RelayMK2);
NEI.hide(RelayMK3);
NEI.hide(CollectorMK1);
NEI.hide(CollectorMK2);
NEI.hide(CollectorMK3);
NEI.hide(Pedestal);
NEI.hide(Cataclysm);
NEI.hide(Catalyst);
NEI.hide(InterdictionTorch);
NEI.hide(RepairTalisman);
NEI.hide(FlowingTime);
NEI.hide(IronBand);

recipes.remove(AlchemicalChest);
recipes.remove(CondenserMK1);
recipes.remove(CondenserMK2);
recipes.remove(TransmutationTable);
recipes.remove(TransmutationTablet);
recipes.remove(PhilosophersStone);
recipes.remove(AlchemicalBag);
recipes.remove(DustMK1);
recipes.remove(DustMK2);
recipes.remove(DustMK3);
recipes.remove(<minecraft:bedrock>);
recipes.remove(KnowledgeTome);

////////////////////////
// Recipe Addition
////////////////////////

recipes.addShaped(AlchemicalChest, [
    [DustMK3, DustMK3, DustMK3], 
    [<minecraft:stone>, <Botania:manaResource:2>, <minecraft:stone>], 
    [<minecraft:iron_block>, <minecraft:chest>, <minecraft:iron_block>]
]);

recipes.addShaped(CondenserMK1, [
    [DustMK3, InfinityCatalyst, DustMK3], 
    [Terrasteel, AlchemicalChest, Terrasteel], 
    [Terrasteel, Terrasteel, Terrasteel]
]);

recipes.addShaped(CondenserMK2, [
    [InfinityCatalyst, InfinityCatalyst, InfinityCatalyst], 
    [DustMK3, CondenserMK1, DustMK3], 
    [Terrasteel, PhilosophersStone, Terrasteel]
]);

mods.avaritia.ExtremeCrafting.addShaped(TransmutationTable, [
	[InfinityCatalyst, NeutroniumIngot,    NeutroniumIngot,    NeutroniumIngot,    NeutroniumIngot, NeutroniumIngot,    NeutroniumIngot,    NeutroniumIngot,    InfinityCatalyst],
	[NeutroniumIngot,  DustMK3,            InfinityCatalyst,   CrystalMatrixIngot, CTerminal,       CrystalMatrixIngot, InfinityCatalyst,   DustMK3,            NeutroniumIngot],
	[NeutroniumIngot,  InfinityCatalyst,   CrystalMatrixIngot, RedstoneSNGL,       CondenserMK2,    GoldSNGL,           CrystalMatrixIngot, InfinityCatalyst,   NeutroniumIngot],
	[NeutroniumIngot,  CrystalMatrixIngot, RedstoneSNGL,       Terrasteel,         UltimateFurnace, PhilosophersStone,  GoldSNGL,           CrystalMatrixIngot, NeutroniumIngot],
	[NeutroniumIngot,  PTerminal,          CondenserMK2,       UltimateFurnace,    Bedrock,         UltimateFurnace,    CondenserMK2,       Controller,         NeutroniumIngot],
	[NeutroniumIngot,  CrystalMatrixIngot, LapisSNGL,          PhilosophersStone,  UltimateFurnace, Terrasteel,         IronSNGL,           CrystalMatrixIngot, NeutroniumIngot],
	[NeutroniumIngot,  InfinityCatalyst,   CrystalMatrixIngot, LapisSNGL,          CondenserMK2,    IronSNGL,           CrystalMatrixIngot, InfinityCatalyst,   NeutroniumIngot],
	[NeutroniumIngot,  DustMK3,            InfinityCatalyst,   CrystalMatrixIngot, ITerminal,       CrystalMatrixIngot, InfinityCatalyst,   DustMK3,            NeutroniumIngot],
	[InfinityCatalyst, NeutroniumIngot,    NeutroniumIngot,    NeutroniumIngot,    NeutroniumIngot, NeutroniumIngot,    NeutroniumIngot,    NeutroniumIngot,    InfinityCatalyst]
]);

mods.avaritia.ExtremeCrafting.addShaped(TransmutationTablet, [
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag],
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag],
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag],
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag],
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, TransmutationTable, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag],
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag],
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag],
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag],
	[AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag, AlchemicalBag]
]);

recipes.addShaped(PhilosophersStone, [
    [DustMK3, <minecraft:bedrock>, DustMK3], 
    [NeutroniumIngot, UltimateFurnace, NeutroniumIngot], 
    [CrystalMatrixIngot, <Avaritia:Triple_Craft>, CrystalMatrixIngot]
]);

recipes.addShaped(AlchemicalBag, [
    [DustMK3, DustMK3, DustMK3], 
    [<minecraft:wool>, AlchemicalChest, <minecraft:wool>], 
    [<minecraft:wool>, <minecraft:wool>, <minecraft:wool>]
]);

recipes.addShaped(DustMK1, [
    [<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>], 
    [<minecraft:emerald>, <Avaritia:Resource:2>, <minecraft:emerald>], 
    [<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>]
]);

recipes.addShaped(DustMK2, [
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 
    [<minecraft:diamond>, DustMK1, <minecraft:diamond>], 
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);

recipes.addShaped(DustMK3, [
    [Elementium, Elementium, Elementium], 
    [Elementium, DustMK2, Elementium], 
    [Elementium, Elementium, Elementium]
]);

recipes.addShaped(<minecraft:bedrock>, [
    [Octuple, Octuple, Octuple], 
    [Octuple, NeutroniumIngot, Octuple], 
    [Octuple, Octuple, Octuple]
]);

recipes.addShaped(KnowledgeTome, [
    [InfinityCatalyst, InfinityCatalyst, InfinityCatalyst], 
    [InfinityCatalyst, Book, InfinityCatalyst], 
    [InfinityCatalyst, InfinityCatalyst, InfinityCatalyst]
]);

print("Completed ProjectE.zs");