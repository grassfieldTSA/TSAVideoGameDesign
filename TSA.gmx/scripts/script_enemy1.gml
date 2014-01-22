if(global.isPaused)
{
hspeed = 0;
}
if(!global.isPaused)
{
hspeed = 6*dir;

if(hspeed > 0)
    {
    dir = 1;
    }
    else
    {
    dir = -1;
    }

}
