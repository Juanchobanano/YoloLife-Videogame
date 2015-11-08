text = argument1;
copia = text;
yy = argument0;
padding = 50;
text2 = "";
count = 0;
draw_set_halign(noone);
draw_set_font(fnt_1);
draw_set_color(argument2);
if(string_width(text) > room_width - padding*2){
    while(string_length(text2) < string_length(copia)){
        for(i = 1; i < string_length(text); i++){
            str = string_copy(text,1,i); count++;
            if(string_width(str) > room_width - padding*2){
                text = string_copy(text,count + 1,string_length(text));
                str = string_insert("#",str,i+1); count = 0; break;
            }
        }
        if(string_char_at(str,1) == " "){str = string_delete(str,1,1);}
        text2 = string_insert(str,text2,string_length(text2) + 1);
        draw_text(padding,yy,text2);
    }
}
