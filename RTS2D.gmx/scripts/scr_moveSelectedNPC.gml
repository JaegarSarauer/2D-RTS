if (NPCManager.Selected == false) {
    return false;
}

var columnSize = 64;
var xPos = argument0;
var columnNo = floor(xPos/columnSize);

NPCManager.Selected.MoveTo = columnNo * columnSize + columnSize/2;
with NPCManager.Selected {
    scr_changeCommand(3);
}