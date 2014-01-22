//Sets a and b to be slightly to the inside
a = view_xview[0]+32;
b = view_yview[0]+16;


manaBar = (100/global.maxMana)*mana;
//use charHealth since health is built in variable
healthBar = (100/global.maxHealth)*charHealth;

draw_set_color(c_gray);
draw_rectangle(view_xview[0],view_yview[0],view_xview[0]+2000,view_yview[0]+128,false);


//Top left x,y : Bottom Right x,y : Percent filled: colors
//
draw_healthbar(a,b,a+(display_get_width()*global.maxHealth/(30*8)),b+32, healthBar , c_gray ,c_red,c_red,0,true,true);
draw_healthbar(a,b+64,a+(display_get_width()*global.maxMana/(30*8)),b+96, manaBar , c_gray ,c_blue,c_blue,0,true,true);
 
