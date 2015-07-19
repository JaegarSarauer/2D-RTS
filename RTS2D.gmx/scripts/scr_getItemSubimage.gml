/*
argument0 = the index of the item
*/
switch(argument0) {
    //bronze
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
        return argument0;
    //iron
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        return argument0 - 5;
    //silver
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
        return argument - 10;
    default:
        return 0;
}