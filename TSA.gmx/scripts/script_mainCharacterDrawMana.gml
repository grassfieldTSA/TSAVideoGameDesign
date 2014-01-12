a = view_xview[0]+(display_get_width()/25);
b = view_yview[0]+(display_get_height()/25);

manaBar = (100/global.maxMana)*mana;



draw_healthbar(a,b,a+(display_get_width()*global.maxMana/(30*8)),b+(display_get_height()/20), manaBar , c_gray ,c_blue,c_blue,0,true,true);
 
