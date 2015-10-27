if(!instance_exists(obj_fadeout)){
    fadeout = instance_create(0,0,obj_fadeout);
    with(fadeout){
        variable_room = argument0;
    }
}
