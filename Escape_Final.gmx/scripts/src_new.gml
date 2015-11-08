text = argument0;
yy = argument1;
font = argument2;
color = argument3;

padding = 50;
draw_set_color(c_yellow);
draw_set_font(font);
if(string_width(text) > room_height - padding){
    string_insert(text,"#",0);
}
draw_text(padding,yy,text);
