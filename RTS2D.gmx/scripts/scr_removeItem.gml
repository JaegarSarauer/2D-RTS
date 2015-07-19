/*
argument0 = the item index

EITHER arg1 or arg2 can be a number, the other must be -1

NOTE when adding a partial durability item to inventory, it must be added one at a time.
A stack may be added at once IF they are all at full, default durability.
*/
var dur = scr_getItemDurability(argument0)//gets tool type
if (instance_exists(inventoryManager)) {
    for (i = 0; i < ds_list_size(inventoryManager.items); i++) {
        if (inventoryManager.items[|i] == argument0) {
            var itemDur = inventoryManager.durability[|i] % dur;
            if (itemDur == 0) {
                inventoryManager.stacks[|i]--;
                    if (inventoryManager.stacks[|i] <= 0) {
                        ds_list_delete(inventoryManager.items,i);
                        ds_list_delete(inventoryManager.stacks,i);
                        ds_list_delete(inventoryManager.durability,i);
                    }
                return dur;
            } else {
                inventoryManager.durability[|i] -= itemDur;
                return itemDur;
            }
        } else {
            return -1;
        }
    }
}