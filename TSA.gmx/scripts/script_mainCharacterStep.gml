
//Max fall speed
var vspMax = 12;
//Gravity, how fast character falls
var grav = 1;
//Binds keys to variables
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var jump = keyboard_check_pressed(ord("A"));
//How much the character moves each step
var moveAmount = 8;

//1 is right, -1 is left
//var characterDirection = 1;

var jumpGlitch = global.jumpGlitch;

if(!place_meeting(x,y+1,object_canStandOn))
{
global.isPaused = false;
}

//Will not run if paused\
if(!global.isPaused)
{
//Jumping function
if(up)
{
    //Makes sure that the character is standing on the ground
    if(place_meeting(x,y+1,object_canStandOn))
        vspeed = -18;
}

//Function for gravity
//Checks to see if there is a floor under the player, if not, the character falls.
if(!place_meeting(x,y+1,object_canStandOn))
{
    //If falling max speed, does not accelerate any more
    if (vspeed >= vspMax) 
    {
        vspeed = vspMax ;

    }
    else 
        vspeed += grav ; 
}

//Checks to see if the character will go into a block due to speed, if so, it will do the rest of the way, then set vspeed to zero
if(place_meeting(x,y+vspeed,object_canStandOn))
{
    if(vspeed == abs(vspeed))
        while(!place_meeting(x,y+1,object_canStandOn)) y+=1;
    else
        while(!place_meeting(x,y-1,object_canStandOn)) y-=1;

    vspeed = 0;
}

//Moving left and right
//Makes sure player is only pressing one
if(!(left && right))
{
    if(left)
    {
    characterDirection = -1;
        if(place_meeting(x-2,y+vspeed,object_box))
        {
        moveAmount = 4;
        
     //  if(place_meeting(x,y+vspeed,object_box))
        //    while(place_meeting(x-moveAmount,y+vspeed,object_box)) x+=1;
        }   
    
    
        if(place_meeting(x-moveAmount,y+vspeed,obj_wallParent))
            while(!place_meeting(x-1,y+vspeed,obj_wallParent)) x-=1;
        else
            x+=-moveAmount;          
               
        if(place_meeting(x,y+vspeed,object_canStandOn))
        {
            if(vspeed == abs(vspeed))
                while(!place_meeting(x,y+1,object_canStandOn)) y+=1;
            else
                while(!place_meeting(x,y-1,object_canStandOn)) y-=1;
        }       
       // vspeed = 0;
    }         

    
    if(right)
    {
    characterDirection = 1;
        if(place_meeting(x+2,y+vspeed,object_box))
        {
        moveAmount = 4;
        
        }  
    
        if(place_meeting(x+moveAmount,y+vspeed,obj_wallParent))
            while(!place_meeting(x+1,y,obj_wallParent)) x+=1;
        else
            x+=moveAmount;
            
        if(place_meeting(x,y+vspeed,object_canStandOn))
        {
            if(vspeed == abs(vspeed))
                while(!place_meeting(x,y+1,object_canStandOn)) y+=1;
            else
                while(!place_meeting(x,y-1,object_canStandOn)) y-=1;
                
           // vspeed = 0;
        }           
    }
}


//This will be where the mana bar recharges
if(place_meeting(x,y+1,obj_wallParent))
    {
        if(mana < global.maxMana)
        mana += (global.maxMana/120);    
    }
    
    //This is the method for the jump glitch
if(jump)
{
    
//Checks to see if character is able to jump
    if(jumpGlitch)
    {
         if(mana > 10)  
        {
            //check line of sight
            var temp = 220;
            while((temp>0)&&!(place_meeting(x+characterDirection,y,object_canStandOn)))
                {
                x += characterDirection;
                temp--;
                }   
                mana = mana - 10;     
        }
    }
}

while(place_meeting(x,y,object_canStandOn))
{
x += -1*characterDirection;
}



}



//Fixes Stuff
/*
if(place_meeting(x,y,obj_wallParent))
{
    show_message("Inside Wall");
    
    var temp=1;
    
    var fixed = false
    
    while(!fixed)
    {
    if(!place_meeting(x+temp,y,obj_wallParent))
        {
        while(place_meeting(x,y,obj_wallParent)) x+=temp+2;
        }
    else if(!place_meeting(x-temp,y,obj_wallParent))
        {
        while(place_meeting(x,y,obj_wallParent)) x-=temp+2;
        }
    else if(!place_meeting(x,y+temp,obj_wallParent))
        {
        while(place_meeting(x,y,obj_wallParent)) y+=temp+2;
        }
    else if(!place_meeting(x,y-temp,obj_wallParent))
        {
        while(place_meeting(x,y,obj_wallParent)) y-=temp+2;
        }
    
    if(!place_meeting(x,y,obj_wallParent))
        {
        fixed = true; 
        show_message(fixed + "" + temp);   
        }
    }
}
*/


