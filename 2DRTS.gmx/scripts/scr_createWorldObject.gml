/*
argument0 = the sprite name the object will be using.
argument1 = the sprite index the object will be using.
argument2 = the object child of objectblockparent the object will be.
arguemtn3 = the x position of the object.
argument4 = the y position of the object.
*/

var t = instance_create(argument3, argument4, argument2);
t.spriteName = argument0;
t.spriteIndex = argument1;
return t;