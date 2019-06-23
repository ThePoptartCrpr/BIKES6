import minetweaker.item.IItemStack;

// OredictUtils.zs
// By Rizinq for Bike Modded S4

print("Running OredictUtils.zs");

// Mirror aluminium and aluminum ingot oredicts
<ore:ingotAluminum>.mirror(<ore:ingotAluminium>);
<ore:treeSapling>.mirror(<ore:saplingTree>);
<ore:blockWool>.mirror(<ore:blockCloth>);

var BotaniaPetals = <ore:botaniaPetal>;
var Petals as IItemStack[] = [
    <Botania:petal>,
    <Botania:petal:1>,
    <Botania:petal:2>,
    <Botania:petal:3>,
    <Botania:petal:4>,
    <Botania:petal:5>,
    <Botania:petal:6>,
    <Botania:petal:7>,
    <Botania:petal:8>,
    <Botania:petal:9>,
    <Botania:petal:10>,
    <Botania:petal:11>,
    <Botania:petal:12>,
    <Botania:petal:13>,
    <Botania:petal:14>,
    <Botania:petal:15>
];

for petal in Petals {
    BotaniaPetals.add(petal);
}

print("Completed OredictUtils.zs");