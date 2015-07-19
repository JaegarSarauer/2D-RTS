/*
argument0 = the item index
argument1 = the item amounts
argument2 = partial durability

EITHER arg1 or arg2 can be a number, the other must be -1

NOTE when adding a partial durability item to inventory, it must be added one at a time.
A stack may be added at once IF they are all at full, default durability.
*/
var dur = scr_getItemDurability(argument0)//gets tool type
if (instance_exists(inventoryManager)) {
    for (i = 0; i < ds_list_size(inventoryManager.items); i++) {
        if (inventoryManager.items[|i] == argument0) {
            if (argument2 == -1) {
                inventoryManager.stacks[|i] += argument1;
                inventoryManager.durability[|i] += dur * argument1;
            } else {
                inventoryManager.stacks[|i]++;
                inventoryManager.durability[|i] += argument2;
            }
            return true;
        }
    }
    var size = ds_list_size(inventoryManager.items);
    if (inventoryManager.inventorySpaces > size) {
        inventoryManager.items[|size] = argument0;
        if (argument2 == -1) {
            inventoryManager.stacks[|i] += argument1;
            inventoryManager.durability[|i] += dur * argument1;
        } else {
            inventoryManager.stacks[|i]++;
            inventoryManager.durability[|i] += argument2;
        }
        return true;
    } else {
        return false;
    }
}
