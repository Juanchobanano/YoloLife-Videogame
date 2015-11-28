fade = argument0; // 0 desaparecer, 1 aparecer.
obj = argument1;
switch(fade){
    case 0: // Desaparecer.
        if(obj.image_alpha >= 0){
            obj.image_alpha -= .1;
        }else{
            obj.image_alpha = 0;
        }
    break;
    case 1: // Aparecer.
        if(obj.image_alpha <= 1){
            obj.image_alpha += .1;
        }else{
            obj.image_alpha = 1;
        }
    break;
}
