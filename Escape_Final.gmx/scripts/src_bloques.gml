for(i = 0; i < opciones; i++){
    // Crear barra.
    barra[i] = instance_create(0,180,obj_barra); 
    
    // Asignar lugar de creacion dependiendo de la variable salida.
    if(salida == "izq"){                        
        with(barra[i]){ x = -sprite_width; }
    }else if(salida == "der"){
        with(barra[i]){ x = room_width + sprite_width; }
    }
    
    // Asignarle un valor a la variable interna opcion_menu y cambiar su Y.
    switch(i){
        case 0:
            with(barra[0]){ 
                opcion_menu = ds_list_find_value(opciones_menu,0); y = 180;
            }
        break;
        case 1:
            with(barra[1]){ 
                opcion_menu = ds_list_find_value(opciones_menu,1); y = 230;
            }
        break;
        case 2:
            with(barra[2]){ 
                opcion_menu = ds_list_find_value(opciones_menu,2); y = 280;
            }
        break;
        case 3:
            with(barra[3]){ 
                opcion_menu = ds_list_find_value(opciones_menu,3); y = 330; 
            }
        break;
    }
}

opciones = 0;
