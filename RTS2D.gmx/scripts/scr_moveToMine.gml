var xPos = argument0;
var selected = argument1;
var column = floor(xPos/worldManager.blockSize);
if (worldManager.worldObjects[|column] != 0) {
    xPos = column * worldManager.blockSize + worldManager.blockSize/2;
    selected.MoveTo = xPos;
    with selected {
        scr_changeCommand(5);
    }
}    
