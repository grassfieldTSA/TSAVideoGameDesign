if(global.isPaused)
{

a = view_xview[0];
b = view_yview[0];
c = view_xview[0]+(display_get_width());
d = view_yview[0]+(display_get_height());



draw_set_alpha(.8);
draw_rectangle_color(a,b,c,d,c_gray,c_gray,c_gray,c_gray, false);
draw_set_alpha(1);

draw_text_transformed_color(a+(display_get_width())/4,b+(display_get_height())/2, " Press P to unpause",3,3,0, c_red,c_red,c_red,c_red,1); 
 




}
