ti = argument0;
tf = argument1;
texto = argument2;
xx = argument3;
yy = argument4;


draw_set_font(font_mensaje);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_alpha(alpha);
draw_text(room_width/2,80,"What's going on?#I can't move!");
alpha += .1;
draw_set_alpha(1);

