/*
Tools: 0-14
-Pickaxes: 0-4
-Axes: 5-9
-Hammers: 10-14
*/

/*
argument0 = the id of the item to get the durability of
*/
switch(argument0) {
    //bronze
    case 0:
    case 5:
    case 10:
        return 20;
    //iron
    case 1:
    case 6:
    case 11:
        return 80;
    //silver
    case 2:
    case 7:
    case 12:
        return 300;
    //gold
    case 3:
    case 8:
    case 13:
        return 900;
    //diamond
    case 4:
    case 9:
    case 14:
        return 3000;
    default:
        return 1;
}
