if (NPCManager == false) {
    return false;
}

var columnSize = 64;
var xPos = argument0;
var columnNo = floor(xPos/columnSize);

NPCManager.Selected.MoveTo = columnNo * columnSize + columnSize/2;
event_perform_object(NPCManager.Selected, ev_user3, 0);
