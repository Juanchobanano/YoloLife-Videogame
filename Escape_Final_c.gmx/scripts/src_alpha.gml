fade = argument0; // 0 desaparecer, 1 aparecer.
switch(fade){
    case 0: // Desaparecer.
        if(image_alpha >= 0){
            image_alpha -= .1;
        }else{
            image_alpha = 0;
        }
    break;
    case 1: // Aparecer.
        if(image_alpha <= 1){
            image_alpha += .1;
        }else{
            image_alpha = 1;
        }
    break;
}
