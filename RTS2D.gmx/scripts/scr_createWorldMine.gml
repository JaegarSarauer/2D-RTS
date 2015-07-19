/*
argument0 = the x position of the tree trunk
argument1 = the y position of the tree trunk
argument2 = the gridSize of the game
*/
var temp = scr_createWorldObject(spritesMine, 0, objectBlockMine, argument0, argument1);
temp.mineList[|0] = scr_createWorldObject(spritesMine, 1, objectBlockMineChild, argument0, argument1 - argument2);
temp.mineList[|1] = scr_createWorldObject(spritesDirt, 0, objectBlockMineChild, argument0, argument1 - argument2 * 2);
temp.mineList[|2] = scr_createWorldObject(spritesDirt, 2, objectBlockMineChild, argument0 - argument2, argument1 - argument2 * 2);
temp.mineList[|3] = scr_createWorldObject(spritesDirt, 3, objectBlockMineChild, argument0 + argument2, argument1 - argument2 * 2);
temp.mineList[|4] = scr_createWorldObject(spritesDirt, 4, objectBlockMineChild, argument0 - argument2, argument1 - argument2);
temp.mineList[|5] = scr_createWorldObject(spritesDirt, 5, objectBlockMineChild, argument0 + argument2, argument1 - argument2 );
temp.mineList[|6] = scr_createWorldObject(spritesDirt, 4, objectBlockMineChild, argument0 - argument2, argument1);
temp.mineList[|7] = scr_createWorldObject(spritesDirt, 5, objectBlockMineChild, argument0 + argument2, argument1);
return temp;