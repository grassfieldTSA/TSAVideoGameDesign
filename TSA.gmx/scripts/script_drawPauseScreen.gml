if(global.isPaused)
{

a = view_xview[0]+(display_get_width()/25);
b = view_yview[0]+(display_get_height()/25);
c = a*24;
d = b*24;



draw_set_alpha(.6);
draw_rectangle_color(a,b,c,d,c_gray,c_gray,c_gray,c_gray, false);
draw_set_alpha(1);

draw_text_transformed_color(a*8,b*12.5, " Press P to unpause",3,3,0, c_red,c_red,c_red,c_red,1); 
 




}
