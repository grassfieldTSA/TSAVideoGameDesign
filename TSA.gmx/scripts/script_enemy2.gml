if(global.isPaused)
{
hspeed = 0;
}
if(!global.isPaused)
{
hspeed = 4*dir;
charx = obj_mainCharacter.x+32;
chary = obj_mainCharacter.y+64;

if(hspeed > 0)
{
dir = 1;
}
else
{
dir = -1;
}
flameReady ++;

if(flameReady > 60)
{
    if(((charx-x)*dir)>0)
    {
        if(abs(chary-y)<700 && abs(charx-x)<700)
        {
        
        //Uses math to calculate the direction of the projectile
        //Finds the lengths of side x and y    
        sidex = charx-x;
        //Multiply by negative one due to way y coordinate works, as you move down, or negative in plane, larger y coordinate
        sidey = (chary-y)*-1;
        angle = arctan2(sidey,sidex)*180/pi;
        
        inst=instance_create(x,y,object_fireball);
        inst.speed=10;
        inst.direction=angle;
        
        flameReady=0;
         
        }
    
    }

}
}
