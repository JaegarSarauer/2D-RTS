var xPos = argument0;
var selected = argument1;

if (worldManager.worldObjects[|floor(xPos/worldManager.blockSize)] != 0) {
    if (xPos > (selected.x + 32))
        xPos -= 64
    else if (xPos > (selected.x + 32))
        xPos += 64;
    else if (xPos == (selected.x + 32)) {
        if (selected.movingDir == "Left") {
            xPos -= 64;
        } else if (selected.movingDir == "Right"){
            xPos += 64;
        }
    }
        
    selected.MoveTo = xPos;
    with selected {
        scr_changeCommand(4);
    }
}
