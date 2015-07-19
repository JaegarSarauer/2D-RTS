if (NPCManager.Selected == false) {
    return false;
}

var columnSize = 64;
var xPos = argument0;
var columnNo = floor(xPos/columnSize);

var obj = instance_create(columnNo * columnSize + columnSize/2, mouse_y, objectSelector);
return obj;