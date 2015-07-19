/*
argument0 = height of the tree trunk (minimum 1)
argument1 = the x position of the tree trunk
argument2 = the y position of the tree trunk
argument3 = the gridSize of the game
*/
var height = argument0
var treeHandler = scr_createWorldObject(spritesTree, 0, objectBlockStump, argument1, argument2);
var treeHandlerIndex = 0;
for (i = 1; i <= height; i++)
treeHandler.logList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 1, objectBlockParent, argument1, argument2 - (argument3 * i));
//scr_createWorldObject(spritesTree, 1, objectBlockParent, argument1, argument2 - argument3 * (height + 1));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1, argument2 - (argument3 * (height + 1)));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1, argument2 - (argument3 * (height + 2)));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1, argument2 - (argument3 * (height + 3)));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1 - argument3, argument2 - (argument3 * (height + 2)));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1 + argument3, argument2 - (argument3 * (height + 2)));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1 - argument3, argument2 - (argument3 * (height + 1)));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1 + argument3, argument2 - (argument3 * (height + 1)));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1 - argument3 * 2, argument2 - (argument3 * (height + 1)));
treeHandler.leafList[| treeHandlerIndex++] = scr_createWorldObject(spritesTree, 2, objectBlockLeaf, argument1 + argument3 * 2, argument2 - (argument3 * (height + 1)));
with treeHandler {
    logs = (ds_list_size(logList) + 1) * 3;
}

return treeHandler;
