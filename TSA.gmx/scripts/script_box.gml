
//Max fall speed
var vspMax = 12;
//Gravity, how fast character falls
var grav = 1;

//Binds keys to variables
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);

//Will not run if paused
if(!global.isPaused)
{

//Function for gravity
//Checks to see if there is a floor under the player, if not, the character falls.
if(!place_meeting(x,y+1,obj_wallParent))
{
    //If falling max speed, does not accelerate any more
    if (vspeed >= vspMax) 
    {
        vspeed = vspMax ;

    }
    else 
        vspeed += grav ; 
}

//Checks to see if the box will go into a block due to speed, if so, it will do the rest of the way, then set vspeed to zero
if(place_meeting(x,y+vspeed,obj_wallParent))
{
    if(vspeed == abs(vspeed))
        while(!place_meeting(x,y+1,obj_wallParent)) y+=1;
    else
        while(!place_meeting(x,y-1,obj_wallParent)) y-=1;

    vspeed = 0;
}
//Moving left and right
//Makes sure player is only pressing one
if(!(left && right))
{
    if(left && place_meeting(x+1,y,obj_mainCharacter))
    {
    
        
        if(place_meeting(x-4,y+vspeed,obj_wallParent))
            while(!place_meeting(x-1,y,obj_wallParent)) x-=1;
        else
            x+=-4;          
               
        if(place_meeting(x-4,y+vspeed,obj_wallParent))
        {
            if(vspeed == abs(vspeed))
                while(!place_meeting(x-8,y+1,obj_wallParent)) y+=1;
            else
                while(!place_meeting(x-8,y-1,obj_wallParent)) y-=1;
        }       
       // vspeed = 0;
    }         

    
    if(right && place_meeting(x-1,y,obj_mainCharacter))
    {
    
        if(place_meeting(x+4,y+vspeed,obj_wallParent))
            while(!place_meeting(x+1,y,obj_wallParent)) x+=1;
        else
            x+=4;
            
        if(place_meeting(x+4,y+vspeed,obj_wallParent))
        {
            if(vspeed == abs(vspeed))
                while(!place_meeting(x+4,y+1,obj_wallParent)) y+=1;
            else
                while(!place_meeting(x+4,y-1,obj_wallParent)) y-=1;
                
           // vspeed = 0;
        }           
    }
}


}



