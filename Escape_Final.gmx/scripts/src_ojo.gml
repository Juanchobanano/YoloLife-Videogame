tiempo = argument0;
index = argument1;
switch(index){
    case 0:
        if(image_alpha <= 1){
            image_alpha += .1;
        }else{
            image_alpha = 1;
        }
        image_index = 0;
    break;
    case 1:
        contador_boss++;
        if(contador_boss >= tiempo){
            image_index = 1;
            contador_boss = 0;
        }
    break;
    case 2:
        contador_boss++;
        if(contador_boss >= tiempo){
            image_index = 0;
            iniciar = 1;
            contador_boss = 0;
        }
    break;
    case 3:
        if(contador_boss == 0){
            alarm[0] = 50;
            contador_boss++;
        }
    break;
}
