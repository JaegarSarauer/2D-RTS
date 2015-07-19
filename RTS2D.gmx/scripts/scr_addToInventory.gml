var i = 0;
var success = false;
var full = false;
for(i = 0; i < inventorySize; i++) {
    if (Inventory[i, 0] == -1) {
        Inventory[i, 0] = argument0;
        Inventory[i, 1] = argument1;
        success = true;
    }
    if (success) {
        if (i == (inventorySize-1)) {
            full = true;
        }
        i = inventorySize;
    }
}
if (success == false) {
    return false;
}

return !full;
