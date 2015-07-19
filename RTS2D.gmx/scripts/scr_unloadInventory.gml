if (!instance_exists(tempStockPile))
    return false;
    
var stockPile = instance_nearest(x, y, tempStockPile);
var xPos = stockPile.x;
if (xPos > x)
    xPos -= 32
else
    xPos += 96;
MoveTo = xPos;
event_user(6);
