//Odds, added together is total.
var stoneOdds = 50;
var coalOdds = 25;
var copperOdds = 20;
var ironOdds = 5;
var silverOdds = 2.5;
var goldOdds = 1;
var emeraldOdds = 0.5;
var diamondOdds = 0.02;

var odds = random(stoneOdds);

if (odds <= diamondOdds)
    return 7;
    
if (odds <= emeraldOdds)
    return 6;
    
if (odds <= goldOdds)
    return 5;
    
if (odds <= silverOdds)
   return 4;
   
if (odds <= ironOdds)
    return 3;
    
if (odds <= copperOdds)
    return 2;
    
if (odds <= coalOdds)
    return 1;
    
if (odds <= stoneOdds)
    return 0;
    
return 1;
    
