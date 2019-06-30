import minetweaker.item.IItemStack;

// VanillaTools.zs
// By Rizinq for Bike Modded S4

print("Running VanillaTools.zs");

function nerfTool(durability as int, item as IItemStack) {
    item.maxDamage = durability;
    item.addTooltip(format.darkRed("Vanilla tools are nerfed!"));
}

var breakTools as IItemStack[] = [
    <minecraft:golden_axe>,
    <minecraft:golden_shovel>,
    <minecraft:golden_hoe>,
    <minecraft:diamond_hoe>,
    <minecraft:diamond_sword>,
    <minecraft:diamond_shovel>,
    <minecraft:diamond_axe>,
    <minecraft:diamond_pickaxe>,
    <minecraft:golden_pickaxe>,
    <minecraft:iron_shovel>,
    <minecraft:iron_axe>,
    <minecraft:iron_pickaxe>,
    <minecraft:iron_sword>,
    <minecraft:golden_sword>,
    <minecraft:iron_hoe>
];

var somewhatBreakTools as IItemStack[] = [
    <minecraft:wooden_axe>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_hoe>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_sword>,
    <minecraft:stone_axe>,
    <minecraft:stone_shovel>,
    <minecraft:stone_hoe>,
    <minecraft:stone_pickaxe>,
    <minecraft:stone_sword>,
];

for tool in breakTools {
    nerfTool(1, tool);
}

for tool in somewhatBreakTools {
    nerfTool(64, tool);
}

recipes.removeShaped(<minecraft:chainmail_helmet>);
recipes.removeShaped(<minecraft:chainmail_chestplate>);
recipes.removeShaped(<minecraft:chainmail_leggings>);
recipes.removeShaped(<minecraft:chainmail_boots>);

print("Completed VanillaTools.zs");