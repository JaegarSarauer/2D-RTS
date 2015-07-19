var logs = argument0;
var seeds = argument1;

if (random(logs) < seeds && logs > 0 && seeds > 0) 
    return "seed";
else
    return "log";