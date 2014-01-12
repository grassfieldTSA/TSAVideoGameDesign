if vspeed > 8 {
vspeed = 8 ;}
else {
vspeed += 0.5 ; }
if(!place_free(0,8)){
vspeed = -4;
}
if(!place_free(0,4)){
vspeed = -2;
}
if(!place_free(0,2)){
vspeed = -2;
}
while(!place_free(0,1)
{
y-=1;
}
