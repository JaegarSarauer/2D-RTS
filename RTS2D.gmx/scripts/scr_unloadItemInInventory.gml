var i = 0;
var success = false;
var empty = false;
for(i = inventorySize - 1; i >= 0; i--) {
    if (Inventory[i, 0] != -1) {
        scr_addItem(Inventory[i, 0], 1, -1);
        Inventory[i, 0] = -1;
        Inventory[i, 1] = -1;
        success = true;
    }
    if (success) {
        if (i == 0) {
            empty = true;
        }
        i = -1;
    }
}
if (success == false) {
    return false;
}

return !empty;
