producto = argument0;
if(ds_list_find_value(productos_comprados,producto) == false){ 

    if(monedas >= ds_list_find_value(valor_productos,producto)){
        //if(src_desbloquear(producto)){
            with(obj_control_shop){
                activar_compra = 1;
            }
            
            monedas -= ds_list_find_value(valor_productos,producto);
            
            ds_list_replace(productos_comprados,producto,true);
            
            
            ds_list_replace(productos_seleccionados,0,producto);
        //}else{
            // Ya miramos.
        //}
    }else{ // Si no tiene suficiente dinero.
        // Compre monedas !
    }
    
}else{ // Si el producto ya esta comprado y esta sin seleccionar.
    ds_list_replace(productos_seleccionados,0,producto);  
}


/*
        if( ! ds_list_find_value( productos_comprados, producto ) -- > booleano.
        
            ds_list_add(productos_comprados,producto);
            

        
        
            Si monedas >= ds_list_find_value(valor_productos,producto); // 100
            
                ¿Seguro que quiere comprarlo?
                
                Si.
                    --- > monedas -= ds_list_find_value(valor_productos,producto);
                    
                    ds_list_replace(productos_comprados,producto,true);
                    
                    
                    // -- CONDICIONAL -- reconosca la naturaleza del producto comprado ( SKIN, X, Y)
                    ds_list_replace(productos_seleccionado,0,producto);
                    
                
                No. 
                    destruimos todo. -- > Si, No, Seguro que quieres comprarlo?
                    
        }else{
            
            // Seleccion de producto. productos_seleccionados.
            
            --> Identificar la categoria del producto.
            
            0 skins:
                ds_list_replace(productos_seleccionados, 0, producto);
            
            1 X:
                ds_list_replace(productos_seleccionados, 1, producto);
            
            2 Y:
                ds_list_replace(productos_seleccionados, 2, producto);
        
        }
        
*/

