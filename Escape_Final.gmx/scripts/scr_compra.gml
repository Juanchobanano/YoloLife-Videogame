index = argument0;

/*
        if( ! ds_list_find_value( productos_comprados, index ) -- > booleano.
        
            ds_list_add(productos_comprados,index);
            

        
        
            Si monedas >= ds_list_find_value(valor_productos,index); // 100
            
                ¿Seguro que quiere comprarlo?
                
                Si.
                    --- > monedas -= ds_list_find_value(valor_productos,index);
                    
                    ds_list_replace(productos_comprados,index,true);
                    
                    
                    // -- CONDICIONAL -- reconosca la naturaleza del producto comprado ( SKIN, X, Y)
                    ds_list_replace(productos_seleccionado,0,index);
                    
                
                No. 
                    destruimos todo. -- > Si, No, Seguro que quieres comprarlo?
                    
        }else{
            
            // Seleccion de producto. productos_seleccionados.
            
            --> Identificar la categoria del producto.
            
            0 skins:
                ds_list_replace(productos_seleccionados, 0, index);
            
            1 X:
                ds_list_replace(productos_seleccionados, 1, index);
            
            2 Y:
                ds_list_replace(productos_seleccionados, 2, index);
        
        }
        
*/

